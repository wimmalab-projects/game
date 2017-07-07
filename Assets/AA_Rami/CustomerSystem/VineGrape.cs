using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VineGrape : Item {

    /// <summary>
    /// Do not confuse with wine color.
    /// This means the color of the grapeskin
    /// </summary>
    public enum GrapeType
    {
        White,
        Red
    }
    GrapeType gt;

    /// <summary>
    /// Are we talking about the the vine that grows the grape or the actual grape
    /// </summary>
    public enum GrapeVineType
    {
        Grape,
        Vine
    }
    private GrapeVineType gvt;

    public GrapeVineType Gvt { get { return gvt; } }
    /// <summary>
    /// Percent value of a highest alcohol found from a grape
    /// </summary>
    public float AlcoholContent { get; set; }

    /// <summary>
    /// Level of acidity in the grape's juice
    /// </summary>
    public enum Acidity
    {
        Low,
        Medium,
        High
    }
    private Acidity acidity;

    /// <summary>
    /// List of aromas and flavours common from this grape
    /// </summary>
    public List<Enum> AromasAndFlavours
    {
        get
        {
            return aromasAndFlavours;
        }
    }
    private List<Enum> aromasAndFlavours;

    /// <summary>
    /// Grapevine constructor. 
    /// </summary>
    /// <param name="name">Name of the grape</param>
    /// <param name="id">Id for the grapevine</param>
    /// <param name="desc">Description of the grape</param>
    /// <param name="grapeVineType">Is this item ripe grape or vine of that grape</param>
    /// <param name="grapeType">Is this white skinned grape or red skinned grape</param>
    /// <param name="acidLevel">is this low/medium/high acidity grape</param>
    /// <param name="maxAlcohol">highest alcohol level found from a wine made by this grape</param>
    /// <param name="aromasAndFlavours">aromas and flavours found from wines made by this grape</param>
    public VineGrape(string name, int id, string desc, GrapeVineType grapeVineType, GrapeType grapeType, Acidity acidLevel, float maxAlcohol) : base(name, id, desc, ItemType.GRAPEVINE)
    {
        aromasAndFlavours = new List<Enum>();
        gvt = grapeVineType;
        gt = grapeType;
        acidity = acidLevel;
        AlcoholContent = maxAlcohol;
        //AromasAndFlavours = aromasAndFlavours;
    }
}
