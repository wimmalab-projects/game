using System;
using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

public class WinePrefab : MonoBehaviour
{
    //    //public enum Status { A,B,C }; 

    //    //public Status state;

    //    public int valForAB;

    //    public int valForA;
    //    public int valForC;

    //    public bool controllable;

    //    //[Header("Appearance")]
    //    //public Wine.AppearanceClarity LooksClarity;
    //    //public Wine.AppearanceIntensity LooksIntensity;
    //    public Wine.AppearanceColorGategories ColorGategory;
    //    public Wine.AppearanceWhiteWineColor WhiteWineColor;
    //    public Wine.AppearanceRoseWineColor RoseWineColor;
    //    public Wine.AppearanceRedWineColor RedWineColor;
    //    //[Space(10)]

    //    //[Header("Nose")]
    //    //public Wine.NoseCondition SmellCondition;
    //    //public Wine.NoseIntensity SmellIntensity;
    //    //// aromas
    //    //[Space(10)]

    //    //[Header("Palate")]
    //    //public Wine.PalateSweetness TasteSweetness;
    //    //public Wine.PalateAcidity TasteAcidity;
    //    //public Wine.PalateTannin TasteTannin;
    //    //public Wine.PalateBody TasteBody;
    //    //// flavourcharasteristics
    //    //public Wine.PalateFinish TasteFinish;
    //    //[Space(10)]

    //    //[Header("Conclusions")]
    //    //public Wine.Quality WineQuality;

}

//[CustomEditor(typeof(WinePrefab)), CanEditMultipleObjects]
//public class PropertyHolderEditor : Editor
//{

//    public SerializedProperty state_Prop, WhiteWineColor_Prop, RoseWineColor_Prop, RedWineColor_Prop;

//    void OnEnable()
//    {
//        // Setup the SerializedProperties
//        state_Prop = serializedObject.FindProperty("ColorGategory");


//        WhiteWineColor_Prop = serializedObject.FindProperty("WhiteWineColor");
//        RoseWineColor_Prop = serializedObject.FindProperty("RoseWineColor");
//        RedWineColor_Prop = serializedObject.FindProperty("RedWineColor");
//    }

//    public override void OnInspectorGUI()
//    {
//        serializedObject.Update();

//        EditorGUILayout.PropertyField(state_Prop);

//        //WinePrefab.Status st = (WinePrefab.Status)state_Prop.enumValueIndex;

//        //switch (st)
//        //{
//        //    case WinePrefab.Status.A:
//        //        EditorGUILayout.PropertyField(controllable_Prop, new GUIContent("controllable"));
//        //        EditorGUILayout.IntSlider(valForA_Prop, 0, 10, new GUIContent("valForA"));
//        //        EditorGUILayout.IntSlider(valForAB_Prop, 0, 100, new GUIContent("valForAB"));
//        //        break;

//        //    case WinePrefab.Status.B:
//        //        EditorGUILayout.PropertyField(controllable_Prop, new GUIContent("controllable"));
//        //        EditorGUILayout.IntSlider(valForAB_Prop, 0, 100, new GUIContent("valForAB"));
//        //        break;

//        //    case WinePrefab.Status.C:
//        //        EditorGUILayout.PropertyField(controllable_Prop, new GUIContent("controllable"));
//        //        EditorGUILayout.IntSlider(valForC_Prop, 0, 100, new GUIContent("valForC"));
//        //        break;

//        //}


//        serializedObject.ApplyModifiedProperties();
//    }
//}