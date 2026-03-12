import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/project.dart';
import '../models/task.dart';
import '../models/time_entry.dart';

class StorageService {
  static const String _projectsKey = 'projects';
  static const String _tasksKey = 'tasks';
  static const String _entriesKey = 'time_entries';

  static SharedPreferences? _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // ── Projects ──────────────────────────────────────────

  static List<Project> getProjects() {
    final data = _prefs?.getString(_projectsKey);
    if (data == null) return [];
    final List<dynamic> jsonList = jsonDecode(data);
    return jsonList.map((e) => Project.fromJson(e)).toList();
  }

  static Future<void> saveProjects(List<Project> projects) async {
    final data = jsonEncode(projects.map((e) => e.toJson()).toList());
    await _prefs?.setString(_projectsKey, data);
  }

  static Future<void> addProject(Project project) async {
    final projects = getProjects();
    projects.add(project);
    await saveProjects(projects);
  }

  static Future<void> deleteProject(String id) async {
    final projects = getProjects();
    projects.removeWhere((p) => p.id == id);
    await saveProjects(projects);
  }

  // ── Tasks ─────────────────────────────────────────────

  static List<Task> getTasks() {
    final data = _prefs?.getString(_tasksKey);
    if (data == null) return [];
    final List<dynamic> jsonList = jsonDecode(data);
    return jsonList.map((e) => Task.fromJson(e)).toList();
  }

  static Future<void> saveTasks(List<Task> tasks) async {
    final data = jsonEncode(tasks.map((e) => e.toJson()).toList());
    await _prefs?.setString(_tasksKey, data);
  }

  static Future<void> addTask(Task task) async {
    final tasks = getTasks();
    tasks.add(task);
    await saveTasks(tasks);
  }

  static Future<void> deleteTask(String id) async {
    final tasks = getTasks();
    tasks.removeWhere((t) => t.id == id);
    await saveTasks(tasks);
  }

  // ── Time Entries ──────────────────────────────────────

  static List<TimeEntry> getTimeEntries() {
    final data = _prefs?.getString(_entriesKey);
    if (data == null) return [];
    final List<dynamic> jsonList = jsonDecode(data);
    return jsonList.map((e) => TimeEntry.fromJson(e)).toList();
  }

  static Future<void> saveTimeEntries(List<TimeEntry> entries) async {
    final data = jsonEncode(entries.map((e) => e.toJson()).toList());
    await _prefs?.setString(_entriesKey, data);
  }

  static Future<void> addTimeEntry(TimeEntry entry) async {
    final entries = getTimeEntries();
    entries.add(entry);
    await saveTimeEntries(entries);
  }

  static Future<void> deleteTimeEntry(String id) async {
    final entries = getTimeEntries();
    entries.removeWhere((e) => e.id == id);
    await saveTimeEntries(entries);
  }
}
