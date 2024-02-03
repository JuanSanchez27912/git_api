import 'dart:convert';

RepoModel repoModelFromJson(String str) => RepoModel.fromJson(json.decode(str));

String repoModelToJson(RepoModel data) => json.encode(data.toJson());

class RepoModel {
  int? id;
  String? nodeId;
  String? url;
  String? repositoryUrl;
  String? labelsUrl;
  String? commentsUrl;
  String? eventsUrl;
  String? htmlUrl;
  int? number;
  String? state;
  String? title;
  String? body;
  Assignee? user;
  List<Label>? labels;
  Assignee? assignee;
  List<Assignee>? assignees;
  Milestone? milestone;
  bool? locked;
  String? activeLockReason;
  int? comments;
  PullRequest? pullRequest;
  dynamic closedAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  Assignee? closedBy;
  String? authorAssociation;
  String? stateReason;

  RepoModel({
    this.id,
    this.nodeId,
    this.url,
    this.repositoryUrl,
    this.labelsUrl,
    this.commentsUrl,
    this.eventsUrl,
    this.htmlUrl,
    this.number,
    this.state,
    this.title,
    this.body,
    this.user,
    this.labels,
    this.assignee,
    this.assignees,
    this.milestone,
    this.locked,
    this.activeLockReason,
    this.comments,
    this.pullRequest,
    this.closedAt,
    this.createdAt,
    this.updatedAt,
    this.closedBy,
    this.authorAssociation,
    this.stateReason,
  });

  factory RepoModel.fromJson(Map<String, dynamic> json) => RepoModel(
    id: json["id"],
    nodeId: json["node_id"],
    url: json["url"],
    repositoryUrl: json["repository_url"],
    labelsUrl: json["labels_url"],
    commentsUrl: json["comments_url"],
    eventsUrl: json["events_url"],
    htmlUrl: json["html_url"],
    number: json["number"],
    state: json["state"],
    title: json["title"],
    body: json["body"],
    user: json["user"] == null ? null : Assignee.fromJson(json["user"]),
    labels: json["labels"] == null ? [] : List<Label>.from(json["labels"]!.map((x) => Label.fromJson(x))),
    assignee: json["assignee"] == null ? null : Assignee.fromJson(json["assignee"]),
    assignees: json["assignees"] == null ? [] : List<Assignee>.from(json["assignees"]!.map((x) => Assignee.fromJson(x))),
    milestone: json["milestone"] == null ? null : Milestone.fromJson(json["milestone"]),
    locked: json["locked"],
    activeLockReason: json["active_lock_reason"],
    comments: json["comments"],
    pullRequest: json["pull_request"] == null ? null : PullRequest.fromJson(json["pull_request"]),
    closedAt: json["closed_at"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    closedBy: json["closed_by"] == null ? null : Assignee.fromJson(json["closed_by"]),
    authorAssociation: json["author_association"],
    stateReason: json["state_reason"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "node_id": nodeId,
    "url": url,
    "repository_url": repositoryUrl,
    "labels_url": labelsUrl,
    "comments_url": commentsUrl,
    "events_url": eventsUrl,
    "html_url": htmlUrl,
    "number": number,
    "state": state,
    "title": title,
    "body": body,
    "user": user?.toJson(),
    "labels": labels == null ? [] : List<dynamic>.from(labels!.map((x) => x.toJson())),
    "assignee": assignee?.toJson(),
    "assignees": assignees == null ? [] : List<dynamic>.from(assignees!.map((x) => x.toJson())),
    "milestone": milestone?.toJson(),
    "locked": locked,
    "active_lock_reason": activeLockReason,
    "comments": comments,
    "pull_request": pullRequest?.toJson(),
    "closed_at": closedAt,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "closed_by": closedBy?.toJson(),
    "author_association": authorAssociation,
    "state_reason": stateReason,
  };
}

class Assignee {
  String? login;
  int? id;
  String? nodeId;
  String? avatarUrl;
  String? gravatarId;
  String? url;
  String? htmlUrl;
  String? followersUrl;
  String? followingUrl;
  String? gistsUrl;
  String? starredUrl;
  String? subscriptionsUrl;
  String? organizationsUrl;
  String? reposUrl;
  String? eventsUrl;
  String? receivedEventsUrl;
  String? type;
  bool? siteAdmin;

  Assignee({
    this.login,
    this.id,
    this.nodeId,
    this.avatarUrl,
    this.gravatarId,
    this.url,
    this.htmlUrl,
    this.followersUrl,
    this.followingUrl,
    this.gistsUrl,
    this.starredUrl,
    this.subscriptionsUrl,
    this.organizationsUrl,
    this.reposUrl,
    this.eventsUrl,
    this.receivedEventsUrl,
    this.type,
    this.siteAdmin,
  });

  factory Assignee.fromJson(Map<String, dynamic> json) => Assignee(
    login: json["login"],
    id: json["id"],
    nodeId: json["node_id"],
    avatarUrl: json["avatar_url"],
    gravatarId: json["gravatar_id"],
    url: json["url"],
    htmlUrl: json["html_url"],
    followersUrl: json["followers_url"],
    followingUrl: json["following_url"],
    gistsUrl: json["gists_url"],
    starredUrl: json["starred_url"],
    subscriptionsUrl: json["subscriptions_url"],
    organizationsUrl: json["organizations_url"],
    reposUrl: json["repos_url"],
    eventsUrl: json["events_url"],
    receivedEventsUrl: json["received_events_url"],
    type: json["type"],
    siteAdmin: json["site_admin"],
  );

  Map<String, dynamic> toJson() => {
    "login": login,
    "id": id,
    "node_id": nodeId,
    "avatar_url": avatarUrl,
    "gravatar_id": gravatarId,
    "url": url,
    "html_url": htmlUrl,
    "followers_url": followersUrl,
    "following_url": followingUrl,
    "gists_url": gistsUrl,
    "starred_url": starredUrl,
    "subscriptions_url": subscriptionsUrl,
    "organizations_url": organizationsUrl,
    "repos_url": reposUrl,
    "events_url": eventsUrl,
    "received_events_url": receivedEventsUrl,
    "type": type,
    "site_admin": siteAdmin,
  };
}

class Label {
  int? id;
  String? nodeId;
  String? url;
  String? name;
  String? description;
  String? color;
  bool? labelDefault;

  Label({
    this.id,
    this.nodeId,
    this.url,
    this.name,
    this.description,
    this.color,
    this.labelDefault,
  });

  factory Label.fromJson(Map<String, dynamic> json) => Label(
    id: json["id"],
    nodeId: json["node_id"],
    url: json["url"],
    name: json["name"],
    description: json["description"],
    color: json["color"],
    labelDefault: json["default"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "node_id": nodeId,
    "url": url,
    "name": name,
    "description": description,
    "color": color,
    "default": labelDefault,
  };
}

class Milestone {
  String? url;
  String? htmlUrl;
  String? labelsUrl;
  int? id;
  String? nodeId;
  int? number;
  String? state;
  String? title;
  String? description;
  Assignee? creator;
  int? openIssues;
  int? closedIssues;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? closedAt;
  DateTime? dueOn;

  Milestone({
    this.url,
    this.htmlUrl,
    this.labelsUrl,
    this.id,
    this.nodeId,
    this.number,
    this.state,
    this.title,
    this.description,
    this.creator,
    this.openIssues,
    this.closedIssues,
    this.createdAt,
    this.updatedAt,
    this.closedAt,
    this.dueOn,
  });

  factory Milestone.fromJson(Map<String, dynamic> json) => Milestone(
    url: json["url"],
    htmlUrl: json["html_url"],
    labelsUrl: json["labels_url"],
    id: json["id"],
    nodeId: json["node_id"],
    number: json["number"],
    state: json["state"],
    title: json["title"],
    description: json["description"],
    creator: json["creator"] == null ? null : Assignee.fromJson(json["creator"]),
    openIssues: json["open_issues"],
    closedIssues: json["closed_issues"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    closedAt: json["closed_at"] == null ? null : DateTime.parse(json["closed_at"]),
    dueOn: json["due_on"] == null ? null : DateTime.parse(json["due_on"]),
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "html_url": htmlUrl,
    "labels_url": labelsUrl,
    "id": id,
    "node_id": nodeId,
    "number": number,
    "state": state,
    "title": title,
    "description": description,
    "creator": creator?.toJson(),
    "open_issues": openIssues,
    "closed_issues": closedIssues,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "closed_at": closedAt?.toIso8601String(),
    "due_on": dueOn?.toIso8601String(),
  };
}

class PullRequest {
  String? url;
  String? htmlUrl;
  String? diffUrl;
  String? patchUrl;

  PullRequest({
    this.url,
    this.htmlUrl,
    this.diffUrl,
    this.patchUrl,
  });

  factory PullRequest.fromJson(Map<String, dynamic> json) => PullRequest(
    url: json["url"],
    htmlUrl: json["html_url"],
    diffUrl: json["diff_url"],
    patchUrl: json["patch_url"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "html_url": htmlUrl,
    "diff_url": diffUrl,
    "patch_url": patchUrl,
  };
}