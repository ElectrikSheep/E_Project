using UnityEngine;
using System.Collections;

public class PlayerProfile
{
		public enum FIELDS
		{
				WEAPON_PRIMAL,
				WEAPON_SECONDARY,
				HIGHEST_SCORE,
				HIGHEST_STREAK,
				BODY_COUNT
		}

		private static PlayerProfile _instance = null;
		// The weapon settings
		private int primalWeapon = 0;
		private int secondWeapon = 0;
		// Total number of zombies killed
		private int bodyCount = 0;
		// Highest Score
		private int highScore = 0;
		private int highStreak = 0;

		public static PlayerProfile Instance {
				get {
						if (_instance == null) {
								_instance = new PlayerProfile ();
								_instance.Load_Profile ();
						}
						return _instance;
				}
		}

		private void Load_Profile ()
		{
				primalWeapon = PlayerPrefs.GetInt ("primalWeapon", 0);
				secondWeapon = PlayerPrefs.GetInt ("secondWeapon", 1);

				bodyCount = PlayerPrefs.GetInt ("bodyCount");

				highScore = PlayerPrefs.GetInt ("HighScore", 0);
				highStreak = PlayerPrefs.GetInt ("HighStreak", 0);
		}

		public void Update_ProfileForField (FIELDS field, int value)
		{
				string tempField;
				switch (field) {
				case FIELDS.WEAPON_PRIMAL:
						PlayerPrefs.SetInt ("primalWeapon", value);
						primalWeapon = value;
						break;
				case FIELDS.WEAPON_SECONDARY:
						PlayerPrefs.SetInt ("secondWeapon", value);
						secondWeapon = value;
						break;
				case FIELDS.HIGHEST_SCORE:
						if (highScore < value) {
								highScore = value;
								PlayerPrefs.SetInt ("HighScore", value);
						}
						break;
				case FIELDS.HIGHEST_STREAK:
						if (highStreak < value) {
								highStreak = value;
								PlayerPrefs.SetInt ("HighStreak", value);
						}
						break;
				case FIELDS.BODY_COUNT:
						bodyCount += value;
						PlayerPrefs.SetInt ("bodyCount", bodyCount);
						break;
				default :
						Debug.Log ("Value not supported: " + field);
						return;
				}
		}

		public void Update_ForFieldS (FIELDS[] fields, int[] values)
		{
				if (fields.Length != values.Length) {
						Debug.LogError ("DIFFERENT ARRAY SIZE CUNT");
				}
				for (int i = 0; i < fields.Length; i++) {
						Update_ProfileForField (fields [i], values [i]);
				}
		}

		public int GetValue_ForField (FIELDS field)
		{
				switch (field) {
				case FIELDS.BODY_COUNT:
						return bodyCount;
				case FIELDS.HIGHEST_SCORE:
						return highScore;
				case FIELDS.HIGHEST_STREAK:
						return highStreak;
				case FIELDS.WEAPON_PRIMAL:
						return primalWeapon;
				case FIELDS.WEAPON_SECONDARY:
						return secondWeapon;
				default :
						Debug.LogError ("Unrecognised key");
						return -1;
				}
		}
}
