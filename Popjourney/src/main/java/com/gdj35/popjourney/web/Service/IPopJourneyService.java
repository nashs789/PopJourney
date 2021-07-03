package com.gdj35.popjourney.web.Service;

import java.util.HashMap;
import java.util.List;

public interface IPopJourneyService {

	HashMap<String, String> login(HashMap<String, String> params) throws Throwable;

	HashMap<String, String> IDDbCk(HashMap<String, String> params) throws Throwable;

	HashMap<String, String> nicDbCk(HashMap<String, String> params) throws Throwable;

	int join(HashMap<String, String> params) throws Throwable;
}
