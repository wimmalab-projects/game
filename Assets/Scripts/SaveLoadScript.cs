/* This script is used to save all necessary info so that when the player goes away from the app or quits it and returns all info is there */

using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;
using UnityEngine;
using UnityEngine.UI;

public class SaveLoadScript : MonoBehaviour
{

    // Get gameobjects with timers
    GameObject[] plants;
    GameObject[] fermentors;
    GameObject[] clarifications;
    GameObject[] bottlings;
    Inventory inventory;
    DialogueTest dt;
    GameMaster gm;


    System.DateTime timeReturn; // Get the time when we returned to app
    public bool wannaDelete; // Only for debugging, so we can delete the savefile in mobile
    private bool initialFocus; // This is used to recognize if we launched the app or we came back to the game without exiting

    private void Awake()
    {
        gm = GameObject.FindGameObjectWithTag("GameManager").GetComponent<GameMaster>();
        dt = gm.GetComponent<DialogueTest>();
        inventory = gm.GetComponent<Inventory>();
    }

    private void Start()
    {
        Load(); // Load all info
        inventory.CreateCustomSlots();
        wannaDelete = false;
    }

    // This method is for saving the info
    public void Save()
    {
        // If we wanted to delete the file delete it, else save
        if (wannaDelete)
        {
            DeleteFile();
            return;
        }
        else
        {
            // Find gameobjects which have timer enabled
            plants = GameObject.FindGameObjectsWithTag("Planted");
            fermentors = GameObject.FindGameObjectsWithTag("Fermenting");
            clarifications = GameObject.FindGameObjectsWithTag("Clarificating");
            bottlings = GameObject.FindGameObjectsWithTag("Bottling");

            // Timerdata object
            TimerData timerData = new TimerData();

            // Loop through all plant gameobjects which are planted
            foreach (GameObject plant in plants)
            {
                // Everything under this is used in another methods too but with different scripts and variables
                PlantGround pg = plant.GetComponent<PlantGround>(); // Get the plant script
                List<TimerData> dataList = new List<TimerData>(); // Create a list to put data into
                dataList.Add(new TimerData(pg.PlantName, pg.Timer, pg.PlantState)); // Add plant data to list
                timerData.Plants.Add(plant.name, dataList); // Add list to timerdata dictionary
            }

            // Loop through all ferment gameobjects which are fermenting
            foreach(GameObject ferment in fermentors)
            {
                FermentorScript fs = ferment.GetComponent<FermentorScript>();
                List<TimerData> dataList = new List<TimerData>();
                dataList.Add(new TimerData(fs.GrapeName, fs.Timer, fs.FermentationState, fs.GetComponent<FermentorScript>().ourWine, fs.wineTypeDecided, fs.CollectedGrapes));
                timerData.Ferments.Add(ferment.name, dataList);
            }

            // Loop through all clarification gameobjects which are clarficating
            foreach(GameObject clarificication in clarifications)
            {
                ClarificationScript cs = clarificication.GetComponent<ClarificationScript>();
                List<TimerData> dataList = new List<TimerData>();
                dataList.Add(new TimerData(cs.WineName, cs.Timer, cs.ClarificationState, cs.ourWine));
                timerData.Clarifications.Add(clarificication.name, dataList);
            }

            // Loop through all bottling gameobjects which are bottling
            foreach(GameObject bottling in bottlings)
            {
                BottlingScript bs = bottling.GetComponent<BottlingScript>();
                List<TimerData> dataList = new List<TimerData>();
                dataList.Add(new TimerData(bs.WineName, bs.Timer, bs.BottlingState, bs.ourWine));
                timerData.Bottlings.Add(bottling.name, dataList);
            }

            // Inventorydata object
            InventoryData inventoryData = new InventoryData();

            // Get all inventory items and add them to inventorydata dictionary
            foreach(KeyValuePair<string, Item> item in inventory.Items)
            {
                inventoryData.Items.Add(item.Key, item.Value);
            }

            timerData.timeExit = System.DateTime.Now; // Time we exited the app
            //Debug.Log(data.timeExit);

            // Set player data
            PlayerData playerData = new PlayerData();
            playerData.Name = Player.Name;
            playerData.Exp = Player.Exp;
            playerData.ExpNeeded = Player.ExpNeeded;
            playerData.Level = Player.Level;
            playerData.Money = Player.Money;

            TutorialData tutorialData = new TutorialData();
            tutorialData.tutorialcompleted = dt.tutorialcompleted;


            // Serialize
            BinaryFormatter bf = new BinaryFormatter();
            FileStream saveFile = File.Create(Application.persistentDataPath + "/SaveFile.dat");
            bf.Serialize(saveFile, timerData);
            bf.Serialize(saveFile, inventoryData);
            bf.Serialize(saveFile, playerData);
            bf.Serialize(saveFile, tutorialData);
            saveFile.Close();
            Debug.Log("Saving...");
        }
    }

    // This method loads all the info saved in savefile.dat
    public void Load()
    {
        timeReturn = System.DateTime.Now; // Get the time we returned to the app
        if (File.Exists(Application.persistentDataPath + "/SaveFile.dat"))
        {
            // Deserialize
            BinaryFormatter bf = new BinaryFormatter();
            FileStream loadFile = File.Open(Application.persistentDataPath + "/SaveFile.dat", FileMode.Open);
            TimerData timerData = (TimerData)bf.Deserialize(loadFile);
            InventoryData inventoryData = (InventoryData)bf.Deserialize(loadFile);
            PlayerData playerData = (PlayerData)bf.Deserialize(loadFile);
            TutorialData tutorialData = (TutorialData)bf.Deserialize(loadFile);
            //Debug.Log("Loading to " + Application.persistentDataPath);
            loadFile.Close();

            // Get the time difference we exited from the app and returned to the app
            // THIS CAN BE EXPLOITED BY MOVING THE SYSTEM CLOCK.. IS THERE FIX FOR IT!!!?!1+1!?!+!+!+??
            float timeLapsed;
            System.TimeSpan difference = timerData.timeExit.Subtract(timeReturn);
            timeLapsed = (float)difference.TotalSeconds; // Put the difference to seconds so we can easily substract the time
            //Debug.Log(timeLapsed);

            // Loop through plant dictionary and assign saved values to variables
            foreach (KeyValuePair<string, List<TimerData>> plant in timerData.Plants)
            {
                GameObject go = GameObject.Find(plant.Key);
                go.tag = "Planted";
                PlantGround pg = go.GetComponent<PlantGround>();
                foreach(TimerData saveData in plant.Value)
                {
                    pg.PlantName = saveData.PlantName;
                    pg.PlantState = saveData.PlantState;
                    pg.Timer = (saveData.PlantTimer + timeLapsed); // Substract the difference from the timer
                }
            }

            // Loop through ferment dictionary and assign saved values to variables
            foreach (KeyValuePair<string, List<TimerData>> ferment in timerData.Ferments)
            {
                GameObject go = GameObject.Find(ferment.Key);
                go.tag = "Fermenting";
                FermentorScript fs = go.GetComponent<FermentorScript>();
                foreach(TimerData saveData in ferment.Value)
                {
                    fs.GrapeName = saveData.FermentName;
                    fs.FermentationState = saveData.FermentState;
                    fs.Timer = (saveData.FermentTimer + timeLapsed);
                    fs.ourWine = saveData.FermentHolder1;
                    fs.wineTypeDecided = saveData.FermentorWineTypeDecided;
                    fs.CollectedGrapes = saveData.FermentorSkinsCollected;
                }
            }

            // Loop through clarification dictionary and assign saved values to variables
            foreach (KeyValuePair<string, List<TimerData>> clarificate in timerData.Clarifications)
            {
                GameObject go = GameObject.Find(clarificate.Key);
                go.tag = "Clarificating";
                ClarificationScript cs = go.GetComponent<ClarificationScript>();
                foreach(TimerData saveData in clarificate.Value)
                {
                    cs.WineName = saveData.ClarificationName;
                    cs.ClarificationState = saveData.ClarificationState;
                    cs.Timer = (saveData.ClarificationTimer + timeLapsed); // Substract the difference from the timer
                    cs.ourWine = saveData.ClarificationHolder;
                }
            }

            // Loop through bottling dictionary and assign saved values to variables
            foreach (KeyValuePair<string, List<TimerData>> bottle in timerData.Bottlings)
            {
                GameObject go = GameObject.Find(bottle.Key);
                go.tag = "Bottling";
                BottlingScript bs = go.GetComponent<BottlingScript>();
                foreach(TimerData saveData in bottle.Value)
                {
                    bs.WineName = saveData.BottlingName;
                    bs.BottlingState = saveData.BottlingState;
                    bs.Timer = (saveData.BottlingTimer + timeLapsed); // Substract the difference from the timer
                    bs.ourWine = saveData.BottlingHolder;
                }
            }

            // Loop through the item dictionary and assign saved itemcounts to items itemcount
            foreach (KeyValuePair<string, Item> item in inventoryData.Items)
            {
                inventory.Items[item.Key] = item.Value;
            }

            // Set player data
            Player.Name = playerData.Name;
            Player.Exp = playerData.Exp;
            Player.ExpNeeded = playerData.ExpNeeded;
            Player.Level = playerData.Level;
            Player.Money = playerData.Money;

            //if(gm.GetComponent<DialogueTest>() != null)
            //{
            //    dt = gm.GetComponent<DialogueTest>();
            //    dt.tutorialcompleted = tutorialData.tutorialcompleted;
            //}

            if(dt.tutorialcompleted)
            {
                Destroy(dt);
            }
            
            Debug.Log("Loading...");
        }
    }

    [Serializable]
    class TimerData
    {
        // Plants
        public string PlantName { get; set; }
        public float PlantTimer { get; set; }
        public GameMaster.PlantState PlantState { get; set; }

        // Fermentors
        public string FermentName { get; set; }
        public float FermentTimer { get; set; }
        public GameMaster.FermentationState FermentState { get; set; }
        public OurWine FermentHolder1 { get; set; }
        public bool FermentorWineTypeDecided;
        public bool FermentorSkinsCollected;

        // Clarificators
        public string ClarificationName { get; set; }
        public float ClarificationTimer { get; set; }
        public GameMaster.ClarificationState ClarificationState { get; set; }
        public ItemOurWine ClarificationHolder { get; set; }

        // Bottlers
        public string BottlingName { get; set; }
        public float BottlingTimer { get; set; }
        public GameMaster.BottlingState BottlingState { get; set; }
        public ItemOurWine BottlingHolder { get; set; }

        // Time we exited the app
        public System.DateTime timeExit;

        // Different constructors for plants / fermentors etc.
        public TimerData()
        {

        }

        public TimerData(string name, float timer, GameMaster.PlantState state)
        {
            PlantName = name;
            PlantTimer = timer;
            PlantState = state;
        }

        public TimerData(string name, float timer, GameMaster.FermentationState state, OurWine holder1, bool decided, bool collected)
        {
            FermentName = name;
            FermentTimer = timer;
            FermentState = state;
            FermentHolder1 = holder1;
            FermentorWineTypeDecided = decided;
            FermentorSkinsCollected = collected;
        }

        public TimerData(string name, float timer, GameMaster.ClarificationState state, ItemOurWine holder)
        {
            ClarificationName = name;
            ClarificationTimer = timer;
            ClarificationState = state;
            ClarificationHolder = holder;
        }

        public TimerData(string name, float timer, GameMaster.BottlingState state, ItemOurWine holder)
        {
            BottlingName = name;
            BottlingTimer = timer;
            BottlingState = state;
            BottlingHolder = holder;
        }

        // Dictionaries which we use to save the data.
        public Dictionary<string, List<TimerData>> Plants = new Dictionary<string, List<TimerData>>();
        public Dictionary<string, List<TimerData>> Ferments = new Dictionary<string, List<TimerData>>();
        public Dictionary<string, List<TimerData>> Clarifications = new Dictionary<string, List<TimerData>>();
        public Dictionary<string, List<TimerData>> Bottlings = new Dictionary<string, List<TimerData>>();
    }

    // Inventorydata
    [Serializable]
    class InventoryData
    {
        public SortedList<string, Item> Items = new SortedList<string, Item>();

        public InventoryData()
        {

        }
    }

    // Playerdata
    [Serializable]
    class PlayerData
    {
        public string Name { get; set; }
        public int Exp { get; set; }
        public double ExpNeeded { get; set; }
        public const int ExpConst = 100;
        public int Level { get; set; }
        public int Money { get; set; }
    }

    [Serializable]
    class TutorialData
    {
        public bool tutorialcompleted { get; set; }
    }

    // When application goes pause and unpause
    private void OnApplicationPause(bool isPaused)
    {
        if (isPaused)
        {
            Save(); // Save data
        }
        else if (isPaused && initialFocus) // If we have came back from the pause and this is not the time we launched the app
        {
            Load(); // Load data
        }

        initialFocus = initialFocus || isPaused; // This is used to recognize if we launched the app or we came back to the game without exiting
    }

    // When application gains and loses focus
    private void OnApplicationFocus(bool hasFocus)
    {
        if (!hasFocus)
        {
            Save(); // Save data
        }
        else if (hasFocus && initialFocus) // If we have came back from the pause and this is not the time we launched the app
        {
            Load(); // Load data
        }

        initialFocus = initialFocus || hasFocus; // This is used to recognize if we launched the app or we came back to the game without exiting
    }

    // This method doesnt work on mobile, but used for pc debugging
    //private void OnApplicationQuit()
    //{
    //    Save(); // Save data
    //}

    // Delete the savefile
    private void DeleteFile()
    {
        File.Delete(Application.persistentDataPath + "/SaveFile.dat");
        Debug.Log("Deleted");
    }

    // When pressed, the next time application exits we delete savefile
    private void OnGUI()
    {
        GUILayout.BeginArea(new Rect(1100, 10, 100, 100));
        if (GUILayout.Button("Delete savefile"))
        {
            wannaDelete = true;
        }
        GUILayout.EndArea();
    }
}
