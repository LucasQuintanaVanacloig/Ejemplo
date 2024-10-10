using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;


public class NaveJugador : MonoBehaviour
{
    private float _Vel;
    private Vector2 MinPantalla, MaxPantalla;
    [SerializeField]
    private GameObject prefaProyectil;
    [SerializeField]
    private GameObject prefabExplosio;
    [SerializeField]
    private TMPro.TextMeshProUGUI uividasJugador;

    private int vidasJugador;
    // Start is called before the first frame update
    void Start()
    {
        DadesGlobals.ReiniciarPunts();
        _Vel = 8;  
        vidasJugador = 3;

        MinPantalla = Camera.main.ViewportToWorldPoint(new Vector2(0,0));
        MaxPantalla = Camera.main.ViewportToWorldPoint(new Vector2(1, 1));

        //Se coge el numero mirando lo que ocupa la mitad de la nave, como mi nave ocupa 0,5 se lo restamos o sumamos segun el eje y asi no se pasa, cogiuendo de referencia
        float medidaImagenX = GetComponent<SpriteRenderer>().sprite.bounds.size.x * transform.localScale.x/2;
        float medidaImagenY = GetComponent<SpriteRenderer>().sprite.bounds.size.y * transform.localScale.y/2 ;

        MinPantalla.x += medidaImagenX;
        MaxPantalla.x -= medidaImagenX;

        MinPantalla.y += medidaImagenY;
        MaxPantalla.y -= medidaImagenY;

    }

    // Update is called once per frame
    void Update()
    {
        movimentNau();

        DisparaProjectil();
        
    }
    private void movimentNau ()
    {
        //Todo esto para que se mueva el jugador y para que la camara tenga limites.
        float DireccionIndicadaX = Input.GetAxisRaw("Horizontal");
        float DireccionIndicadaY = Input.GetAxisRaw("Vertical");
        //Debug.Log("X: " + DireccionIndicadaX + " - Y: " + DireccionIndicadaY);

        Vector2 DireccionIndicada = new Vector2(DireccionIndicadaX, DireccionIndicadaY).normalized;

        Vector2 NuevaPos = transform.position;
        NuevaPos = NuevaPos + DireccionIndicada * _Vel * Time.deltaTime;

        Debug.Log(NuevaPos);

        NuevaPos.x = Mathf.Clamp(NuevaPos.x, MinPantalla.x, MaxPantalla.x);
        NuevaPos.y = Mathf.Clamp(NuevaPos.y, MinPantalla.y, MaxPantalla.y);

        transform.position = NuevaPos;
    }
    private void DisparaProjectil()
    {
        if (Input.GetKeyDown(name: "space"))
        {
            GameObject proyectil = Instantiate(prefaProyectil);
            proyectil.transform.position = transform.position;
        }

    }
    private void OnTriggerEnter2D(Collider2D objecteTocat)
    {
        if (objecteTocat.tag == "Numero")
        {

            vidasJugador--;
            uividasJugador.text = "Vidas: " + vidasJugador;
            if (vidasJugador <= 0) { 
            GameObject Explosio = Instantiate(prefabExplosio);
            Explosio.transform.position = transform.position;
            Destroy(gameObject);
                SceneManager.LoadScene("PantallaResultats");
            }
        }
    }
}
