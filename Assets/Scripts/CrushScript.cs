using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CrushScript : MonoBehaviour
{
    GameObject[] spawnpoint;
    public GameObject grape;
    private GameObject temp;
    private float startTime, refire = 0.3f;
    // Use this for initialization
    void Start()
    {
        startTime = Time.time;
        spawnpoint = GameObject.FindGameObjectsWithTag("Respawn");
    }

    // Update is called once per frame
    void Update()
    {
        if(startTime + refire <= Time.time)
        {
            temp = Instantiate(grape);
            temp.transform.SetParent(gameObject.transform);
            temp.transform.position = spawnpoint[Random.Range(0, spawnpoint.Length)].transform.position;
            startTime = Time.time;
        }
    }
}
