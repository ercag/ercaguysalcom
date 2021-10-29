import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'github_repos_model.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable()
class GitHubReposModel {
  int id;
  // ignore: non_constant_identifier_names
  String node_id;
  String name;
  String full_name;
  bool private;
  OwnerModel owner;
  String html_url;
  String description;
  bool fork;
  String url;
  String forks_url;
  String keys_url;
  String collaborators_url;
  String teams_url;
  String hooks_url;
  String issue_events_url;
  String events_url;
  String assignees_url;
  String branches_url;
  String tags_url;
  String blobs_url;
  String git_tags_url;
  String git_refs_url;
  String trees_url;
  String statuses_url;
  String languages_url;
  String stargazers_url;
  String contributors_url;
  String subscribers_url;
  String subscription_url;
  String commits_url;
  String git_commits_url;
  String comments_url;
  String issue_comment_url;
  String contents_url;
  String compare_url;
  String merges_url;
  String archive_url;
  String downloads_url;
  String issues_url;
  String pulls_url;
  String milestones_url;
  String notifications_url;
  String labels_url;
  String releases_url;
  String deployments_url;
  String created_at;
  String updated_at;
  String pushed_at;
  String git_url;
  String ssh_url;
  String clone_url;
  String svn_url;
  String homepage;
  int size;
  int stargazers_count;
  int watchers_count;
  String language;
  bool has_issues;
  bool has_projects;
  bool has_downloads;
  bool has_wiki;
  bool has_pages;
  int forks_count;
  String mirror_url;
  bool archived;
  bool disabled;
  int open_issues_count;
  LicenseModel? license;
  bool allow_forking;
  bool is_template;
  // dynamic topics;
  String visibility;
  int forks;
  int open_issues;
  int watchers;
  String default_branch;

  GitHubReposModel(
    this.id,
    this.node_id,
    this.name,
    this.full_name,
    this.private,
    this.owner,
    this.html_url,
    this.description,
    this.fork,
    this.url,
    this.forks_url,
    this.keys_url,
    this.collaborators_url,
    this.teams_url,
    this.hooks_url,
    this.issue_events_url,
    this.events_url,
    this.assignees_url,
    this.branches_url,
    this.tags_url,
    this.blobs_url,
    this.git_tags_url,
    this.git_refs_url,
    this.trees_url,
    this.statuses_url,
    this.languages_url,
    this.stargazers_url,
    this.contributors_url,
    this.subscribers_url,
    this.subscription_url,
    this.commits_url,
    this.git_commits_url,
    this.comments_url,
    this.issue_comment_url,
    this.contents_url,
    this.compare_url,
    this.merges_url,
    this.archive_url,
    this.downloads_url,
    this.issues_url,
    this.pulls_url,
    this.milestones_url,
    this.notifications_url,
    this.labels_url,
    this.releases_url,
    this.deployments_url,
    this.created_at,
    this.updated_at,
    this.pushed_at,
    this.git_url,
    this.ssh_url,
    this.clone_url,
    this.svn_url,
    this.homepage,
    this.size,
    this.stargazers_count,
    this.watchers_count,
    this.language,
    this.has_issues,
    this.has_projects,
    this.has_downloads,
    this.has_wiki,
    this.has_pages,
    this.forks_count,
    this.mirror_url,
    this.archived,
    this.disabled,
    this.open_issues_count,
    this.license,
    this.allow_forking,
    this.is_template,
    //this.topics,
    this.visibility,
    this.forks,
    this.open_issues,
    this.watchers,
    this.default_branch,
  );

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory GitHubReposModel.fromJson(Map<String, dynamic> json) =>
      _$GitHubReposModelFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$GitHubReposModelToJson(this);
}

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable()
class OwnerModel {
  String login;
  int id;
  String node_id;

  String avatar_url;
  String gravatar_id;
  String url;
  String html_url;
  String followers_url;
  String following_url;
  String gists_url;
  String starred_url;
  String subscriptions_url;
  String organizations_url;
  String repos_url;
  String events_url;
  String received_events_url;
  String type;
  bool site_admin;

  OwnerModel(
      this.login,
      this.id,
      this.node_id,
      this.avatar_url,
      this.gravatar_id,
      this.url,
      this.html_url,
      this.followers_url,
      this.following_url,
      this.gists_url,
      this.starred_url,
      this.subscriptions_url,
      this.organizations_url,
      this.repos_url,
      this.events_url,
      this.received_events_url,
      this.type,
      this.site_admin);

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory OwnerModel.fromJson(Map<String, dynamic> json) =>
      _$OwnerModelFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$OwnerModelToJson(this);
}

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable()
class LicenseModel {
  String key;
  String name;
  String spdx_id;
  String url;
  String node_id;
  LicenseModel(this.key, this.name, this.spdx_id, this.url, this.node_id);

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory LicenseModel.fromJson(Map<String, dynamic> json) =>
      _$LicenseModelFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$LicenseModelToJson(this);
}
