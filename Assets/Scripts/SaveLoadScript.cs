using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;
using UnityEngine;

public class SaveLoadScript : MonoBehaviour
{

    GameObject[] plants;
    GameObject[] fermentors;
    GameObject[] clarifications;
    GameObject[] bottlings;

    System.DateTime timeReturn;
    private bool wannaDelete;

    private void Awake()
    {
        Load();
    }

    private void Start()
    {
        wannaDelete = false;
    }

    public void Save()
    {
        if (wannaDelete)
        {
            DeleteFile();
            return;
        }
        else
        {
            plants = GameObject.FindGameObjectsWithTag("Planted");
            fermentors = GameObject.FindGameObjectsWithTag("Fermenting");
            clarifications = GameObject.FindGameObjectsWithTag("Clarificating");
            bottlings = GameObject.FindGameObjectsWithTag("Bottling");

            TimerData data = new TimerData();

            foreach (GameObject plant in plants)
            {
                PlantGround pg = plant.GetComponent<PlantGround>();
                List<TimerData> dataList = new List<TimerData>();
                dataList.Add(new TimerData(pg.PlantName, pg.Timer, pg.PlantState));
                data.Plants.Add(plant.name, dataList);
            }

            foreach(GameObject ferment in fermentors)
            {
                FermentorScript fs = ferment.GetComponent<FermentorScript>();
                List<TimerData> dataList = new List<TimerData>();
                dataList.Add(new TimerData(fs.GrapeName, fs.Timer, fs.FermentationState));
                data.Ferments.Add(ferment.name, dataList);
            }

            foreach(GameObject clarificication in clarifications)
            {
                ClarificationScript cs = clarificication.GetComponent<ClarificationScript>();
                List<TimerData> dataList = new List<TimerData>();
                dataList.Add(new TimerData(cs.WineName, cs.Timer, cs.ClarificationState));
                data.Clarifications.Add(clarificication.name, dataList);
            }

            foreach(GameObject bottling in bottlings)
            {
                BottlingScript bs = bottling.GetComponent<BottlingScript>();
                List<TimerData> dataList = new List<TimerData>();
                dataList.Add(new TimerData(bs.WineName, bs.Timer, bs.BottlingState));
                data.Bottlings.Add(bottling.name, dataList);
            }

            data.timeExit = System.DateTime.Now;
            //Debug.Log(data.timeExit);
            BinaryFormatter bf = new BinaryFormatter();
            FileStream saveFile = File.Create(Application.persistentDataPath + "/SaveFile.dat");
            bf.Serialize(saveFile, data);
            //Debug.Log("Saving to " + Application.persistentDataPath);
            saveFile.Close();
        }
    }

    public void Load()
    {
        timeReturn = System.DateTime.Now;
        if (File.Exists(Application.persistentDataPath + "/SaveFile.dat"))
        {
            BinaryFormatter bf = new BinaryFormatter();
            FileStream loadFile = File.Open(Application.persistentDataPath + "/SaveFile.dat", FileMode.Open);
            TimerData data = (TimerData)bf.Deserialize(loadFile);
            //Debug.Log("Loading to " + Application.persistentDataPath);
            loadFile.Close();

            float timeLapsed;
            System.TimeSpan difference = data.timeExit.Subtract(timeReturn);
            timeLapsed = (float)difference.TotalSeconds;
            Debug.Log(timeLapsed);

            foreach (KeyValuePair<string, List<TimerData>> plant in data.Plants)
            {
                GameObject go = GameObject.Find(plant.Key);
                go.tag = "Planted";
                PlantGround pg = go.GetComponent<PlantGround>();
                foreach(TimerData saveData in plant.Value)
                {
                    pg.PlantName = saveData.PlantName;
                    pg.PlantState = saveData.PlantState;
                    pg.Timer = (saveData.PlantTimer + timeLapsed);
                }
            }

            foreach (KeyValuePair<string, List<TimerData>> ferment in data.Ferments)
            {
                GameObject go = GameObject.Find(ferment.Key);
                go.tag = "Fermenting";
                FermentorScript fs = go.GetComponent<FermentorScript>();
                foreach(TimerData saveData in ferment.Value)
                {
                    fs.GrapeName = saveData.FermentName;
                    fs.FermentationState = saveData.FermentState;
                    fs.Timer = (saveData.FermentTimer + timeLapsed);
                }
            }

            foreach(KeyValuePair<string, List<TimerData>> clarificate in data.Clarifications)
            {
                GameObject go = GameObject.Find(clarificate.Key);
                go.tag = "Clarificating";
                ClarificationScript cs = go.GetComponent<ClarificationScript>();
                foreach(TimerData saveData in clarificate.Value)
                {
                    cs.WineName = saveData.ClarificationName;
                    cs.ClarificationState = saveData.ClarificationState;
                    cs.Timer = (saveData.ClarificationTimer + timeLapsed);
                }
            }

            foreach(KeyValuePair<string, List<TimerData>> bottle in data.Bottlings)
            {
                GameObject go = GameObject.Find(bottle.Key);
                go.tag = "Bottling";
                BottlingScript bs = go.GetComponent<BottlingScript>();
                foreach(TimerData saveData in bottle.Value)
                {
                    bs.WineName = saveData.BottlingName;
                    bs.BottlingState = saveData.BottlingState;
                    bs.Timer = (saveData.BottlingTimer + timeLapsed);
                }
            }
        }
    }

    [Serializable]
    class TimerData
    {
        public string PlantName { get; set; }
        public float PlantTimer { get; set; }
        public GameMaster.PlantState PlantState { get; set; }

        public string FermentName { get; set; }
        public float FermentTimer { get; set; }
        public GameMaster.FermentationState FermentState { get; set; }

        public string ClarificationName { get; set; }
        public float ClarificationTimer { get; set; }
        public GameMaster.ClarificationState ClarificationState { get; set; }

        public string BottlingName { get; set; }
        public float BottlingTimer { get; set; }
        public GameMaster.BottlingState BottlingState { get; set; }

        public System.DateTime timeExit;

        public TimerData()
        {

        }

        public TimerData(string name, float timer, GameMaster.PlantState state)
        {
            PlantName = name;
            PlantTimer = timer;
            PlantState = state;
        }

        public TimerData(string name, float timer, GameMaster.FermentationState state)
        {
            FermentName = name;
            FermentTimer = timer;
            FermentState = state;
        }

        public TimerData(string name, float timer, GameMaster.ClarificationState state)
        {
            ClarificationName = name;
            ClarificationTimer = timer;
            ClarificationState = state;
        }

        public TimerData(string name, float timer, GameMaster.BottlingState state)
        {
            BottlingName = name;
            BottlingTimer = timer;
            BottlingState = state;
        }


        public Dictionary<string, List<TimerData>> Plants = new Dictionary<string, List<TimerData>>();
        public Dictionary<string, List<TimerData>> Ferments = new Dictionary<string, List<TimerData>>();
        public Dictionary<string, List<TimerData>> Clarifications = new Dictionary<string, List<TimerData>>();
        public Dictionary<string, List<TimerData>> Bottlings = new Dictionary<string, List<TimerData>>();
    }


    private void OnApplicationPause(bool isPaused)
    {
        if (isPaused)
        {
            Save();
        }
        else
        {
            Load();
        }
    }

    private void OnApplicationFocus(bool hasFocus)
    {
        if (!hasFocus)
        {
            Save();
        }
        else
        {
            Load();
        }
    }

    private void OnApplicationQuit()
    {
        Save();
    }

    private void DeleteFile()
    {
        File.Delete(Application.persistentDataPath + "/SaveFile.dat");
        Debug.Log("Deleted");
    }

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
