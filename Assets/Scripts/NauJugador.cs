using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NauJugador : MonoBehaviour
{
    private float _vel;
    Vector2 minpantalla, maxpantalla;

    // Start is called before the first frame update
    void Start()
    {
        _vel = 8;       
        minpantalla = Camera.main.ViewportToWorldPoint(new Vector2(0,0));
        maxpantalla = Camera.main.ViewportToWorldPoint(new Vector2(1, 1));

        minpantalla.x = minpantalla.x + 0.5f;
        maxpantalla.x = maxpantalla.x + 0.5f;
        minpantalla.x = maxpantalla.x + 0.5f;

    }

    // Update is called once per frame
    void Update()
    {
        float direccioindicadaX = Input.GetAxisRaw("Horizontal");
        float direccioindicadaY = Input.GetAxisRaw("Vertical");

        Debug.Log("X:"+direccioindicadaX+ " Y: "+direccioindicadaY);
        Vector2 direccioindicada = new Vector2(direccioindicadaX, direccioindicadaY).normalized;
        Vector2 novapos = transform.position;
        novapos = novapos + direccioindicada * _vel * Time.deltaTime;
        novapos.x = Mathf.Clamp(novapos.x, minpantalla.x, maxpantalla.x);
        novapos.x = Mathf.Clamp(novapos.y, minpantalla.y, maxpantalla.y);

        transform.position = novapos;


    }
}
