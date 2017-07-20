using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DestroySFX : MonoBehaviour {

    public float DestroyTimer = 2f, now;


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
