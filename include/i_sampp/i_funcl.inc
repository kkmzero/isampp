/*
 * Includes for San Andreas Multiplayer+
 * 2018 - 2023, Ivan Kmeťo
 *
 * CC0 1.0 Universal (CC0 1.0) Public Domain Dedication
 * https://creativecommons.org/publicdomain/zero/1.0/
 */


#if !defined isnull
	#define isnull(%1) ((!(%1[0])) || (((%1[0]) == '\1') && (!(%1[1]))))
#endif

#if !defined max
	#define max(%1,%2) ((%1) < (%2) ? (%2) : (%1))
#endif

#if !defined min
	#define min(%1,%2) ((%1) < (%2) ? (%1) : (%2))
#endif


stock rot13(string[]) {
	for (new index = 0; string[index]; index++) {
		if ('a' <= string[index] <= 'z') {
			string[index] = (string[index] - 'a' +13) % 26 + 'a';
		}
		else if ('A' <= string[index] <= 'Z') {
			string[index] = (string[index] - 'A' +13) % 26 + 'A';
		}
	}

	new result[128];

	strcat(result, string, strlen(string));

	result[strlen(string)] = EOS;
	return result;
}

stock strcpy(dest[], const source[], len = sizeof(dest)) {
	dest[0] = '\0';
	return strcat(dest, source, len);
}

stock strclr(string[]) {
	string[0] = '\0';
}

stock bool:strisempty(const string[]) {
	if (string[0] == '\0' || (string[0] == '\1' && string[1] == '\0')) {
		return true;
	}
	else {
		return false;
	}
}

stock strrest(const string[], &index) {
	new length = strlen(string);

	while ((index < length) && (string[index] <= ' ')) {
		index++;
	}

	new offset = index;
	new result[128];

	while ((index < length) && ((index - offset) < (sizeof(result) - 1))) {
		result[index - offset] = string[index];
		index++;
	}

	result[index - offset] = EOS;
	return result;
}

stock strtok(const string[], &index) {
	new length = strlen(string);

	while ((index < length) && (string[index] <= ' ')) {
		index++;
	}

	new offset = index;
	new result[128];

	while ((index < length) && (string[index] > ' ') && ((index - offset) < (sizeof(result) - 1))) {
		result[index - offset] = string[index];
		index++;
	}

	result[index - offset] = EOS;
	return result;
}

stock strtolower(string[]) {
	new i = 0;

	while(string[i] != '\0') {
		string[i] = tolower(string[i]);
		i++;
	}

	new result[128];

	strcat(result, string, i);

	result[i] = EOS;
	return result;
}

stock strtoupper(string[]) {
	new i = 0;

	while(string[i] != '\0') {
		string[i] = toupper(string[i]);
		i++;
	}

	new result[128];

	strcat(result, string, i);

	result[i] = EOS;
	return result;
}
