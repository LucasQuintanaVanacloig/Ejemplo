using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Numero : MonoBehaviour
{
    private float _vel;

    public Sprite[] spritesNumerosPosibles = new Sprite[10];

    private int valorNumero;

    private Vector2 minPantalla;

    [SerializeField]
    private GameObject prefabExplosio;

    void Start()
    {
        _vel = 2.5f;

        System.Random aleatori = new System.Random(); 
        valorNumero = aleatori.Next(0,10);
        GetComponent<SpriteRenderer>().sprite = spritesNumerosPosibles[valorNumero];

        minPantalla = Camera.main.ViewportToWorldPoint(new Vector2(0,0));

    }

    // Update is called once per frame
    void Update()
    {
        Vector2 nuevaPos = transform.position;
        nuevaPos = nuevaPos+ new Vector2(0, -1) * _vel * Time.deltaTime;
        transform.position = nuevaPos;

        if (transform.position.y < minPantalla.y)
        {
            Destroy(gameObject);
        }
    }
    private void OnTriggerEnter2D(Collider2D objecteTocat)
    {
        if (objecteTocat.tag == "ProjectilJugador" || objecteTocat.tag == "NauJugador")
        {
            GameObject Explosio = Instantiate(prefabExplosio);
            Explosio.transform.position = transform.position;
            Destroy(gameObject) ;
        }
    }
}
