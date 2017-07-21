using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class OptionsScript : MonoBehaviour
{
    private string Button;
    public GameObject OptionsMenu;
    public GameObject ProfileMenu;
    public GameObject Options;
    public GameObject WannaDelete;
    public Toggle MusicToggle;
    private GameObject AudioGO;
    private AudioSource Music;

    private SaveLoadScript slScript;

    private void Awake()
    {
        AudioGO = GameObject.Find("Audio");
        Music = AudioGO.GetComponent<AudioSource>();
        slScript = GameObject.FindGameObjectWithTag("GameManager").GetComponent<SaveLoadScript>();
        Music.mute = PlayerPrefs.GetInt("Music") > 0;
        MusicToggle.isOn = PlayerPrefs.GetInt("MusicToggle") > 0;
    }

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }

    public void ButtonClicked()
    {
        Button = EventSystem.current.currentSelectedGameObject.name;
        switch (Button)
        {
            case "Options":
                OptionsMenu.SetActive(false);
                ProfileMenu.SetActive(false);
                Options.SetActive(true);
                break;
            case "What":
                Application.Quit();
                break;
            case "Quit":
                Application.Quit();
                break;
            case "Back":
                OptionsMenu.SetActive(true);
                ProfileMenu.SetActive(true);
                Options.SetActive(false);
                break;
            case "Delete":
                Options.SetActive(false);
                WannaDelete.SetActive(true);
                //slScript.wannaDelete = true;
                break;
            case "Yes":
                slScript.wannaDelete = true;
                Application.Quit();
                break;
            case "No":
                Options.SetActive(true);
                WannaDelete.SetActive(false);
                break;
        }
    }

    public void MuteMusic()
    {
        if(Music.mute == false)
        {
            Music.mute = true;   
            PlayerPrefs.SetInt("Music", Music.mute ? 1 : 0);
            PlayerPrefs.SetInt("MusicToggle", MusicToggle.isOn ? 1 : 0);
            PlayerPrefs.Save();
        }
        else
        {
            Music.mute = false;
            PlayerPrefs.SetInt("Music", Music.mute ? 1 : 0);
            PlayerPrefs.SetInt("MusicToggle", MusicToggle.isOn ? 1 : 0);
            PlayerPrefs.Save();
        }       
    }
}
