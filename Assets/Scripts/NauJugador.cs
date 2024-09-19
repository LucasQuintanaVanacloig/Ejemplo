using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NauJugador : MonoBehaviour
{
    private float _vel;


    // Start is called before the first frame update
    void Start()
    {
        _vel = 8;        
    }

    // Update is called once per frame
    void Update()
    {
        float direccioindicadaX = Input.GetAxisRaw("Horizontal");
        float direccioindicadaY = Input.GetAxisRaw("Vertical");

        Debug.Log("X:"+direccioindicadaX+ " Y: "+direccioindicadaY);
        Vector2 direccioindicada = new Vector2(direccioindicadaX, direccioindicadaY);
        Vector2 novapos = transform.position;
        novapos = novapos + direccioindicada * _vel * Time.deltaTime;      
        transform.position = novapos;
    }
}
