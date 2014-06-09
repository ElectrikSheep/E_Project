using UnityEngine;
using System.Collections;

[RequireComponent (typeof(AudioSource))]
public class EP_Menu : MonoBehaviour
{
		public void BTNPressed_LaunchGame ()
		{
				Application.LoadLevel ("Game");
		}
}
