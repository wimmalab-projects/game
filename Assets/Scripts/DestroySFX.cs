using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// to make a sound effect, create empty gameobject, attach audio source component, and this script inside it.
/// set destroy timer to the length of the clip in audio source and add some milliseconds for buffer just in case.
/// </summary>
public class DestroySFX : MonoBehaviour {

    public float DestroyTimer = 2f;
    float now;


	// Use this for initialization
	void Start () {
        now = Time.time;
	}
	
	// Update is called once per frame
	void Update () {

        if (now + DestroyTimer < Time.time)
            Destroy(gameObject);

	}
}
