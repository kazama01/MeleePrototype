using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Tilemaps;

public class WFC_Cell : MonoBehaviour
{
   public bool collapsed;
   public Tile[] tileOption;

   public void CreateCell(bool collapseState, Tile[] tiles){
    collapsed =  collapseState;
    tileOption = tiles;
   }
   public void reCreateCell(Tile[] tiles){
    tileOption = tiles;
   }
}
