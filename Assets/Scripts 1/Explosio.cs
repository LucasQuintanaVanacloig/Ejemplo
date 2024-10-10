using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Explosio : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        Invoke("destrueixExplosio", 1f);
    }

    private void destrueixExplosio() {
        Destroy(gameObject);
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
