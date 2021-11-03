/*
 * Includes for San Andreas Multiplayer+
 * 2018 - 2021, Ivan Kmeťo
 *
 * CC0 1.0 Universal (CC0 1.0) Public Domain Dedication
 * https://creativecommons.org/publicdomain/zero/1.0/
 */


#if !defined isnull
	#define isnull(%1) ((!(%1[0])) || (((%1[0]) == '\1') && (!(%1[1]))))
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
	
	return string;
}

stock strclr(string[]) {
	string[0] = '\0';
}

stock bool:strisempty(const string[]) {
	if (string[0] == '\0' || (string[0] == '\1' && string[1] == '\0')) {
		return true;
	}

	return false;
}

stock strrest(const string[], &index)
{
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
	new result[20];

	while ((index < length) && (string[index] > ' ') && ((index - offset) < (sizeof(result) - 1))) {
		result[index - offset] = string[index];
		index++;
	}

	result[index - offset] = EOS;
	return result;
}
