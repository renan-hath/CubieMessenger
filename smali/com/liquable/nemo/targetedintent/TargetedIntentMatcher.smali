.class public Lcom/liquable/nemo/targetedintent/TargetedIntentMatcher;
.super Ljava/lang/Object;
.source "TargetedIntentMatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getActions(Landroid/content/Context;Ljava/util/Map;)Ljava/util/List;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Lcom/liquable/nemo/targetedintent/TargetIntent;",
            "Lcom/liquable/nemo/targetedintent/TargetedAction;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/targetedintent/TargetedAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "targets":Ljava/util/Map;, "Ljava/util/Map<Lcom/liquable/nemo/targetedintent/TargetIntent;Lcom/liquable/nemo/targetedintent/TargetedAction;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 30
    .local v13, "pkgMgr":Landroid/content/pm/PackageManager;
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 31
    .local v18, "types":Ljava/util/Set;, "Ljava/util/Set<Lcom/liquable/nemo/targetedintent/TargetIntent$Type;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/liquable/nemo/targetedintent/TargetIntent;

    .line 32
    .local v14, "targetIntent":Lcom/liquable/nemo/targetedintent/TargetIntent;
    invoke-virtual {v14}, Lcom/liquable/nemo/targetedintent/TargetIntent;->getType()Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    .end local v14    # "targetIntent":Lcom/liquable/nemo/targetedintent/TargetIntent;
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v10, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    .line 38
    .local v17, "type":Lcom/liquable/nemo/targetedintent/TargetIntent$Type;
    const-string/jumbo v20, "android.intent.action.SEND"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->toIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 42
    .end local v17    # "type":Lcom/liquable/nemo/targetedintent/TargetIntent$Type;
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v8, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 44
    .local v9, "intent":Landroid/content/Intent;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v9, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 48
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 49
    .local v11, "invites":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/liquable/nemo/targetedintent/TargetedAction;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_3
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 50
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/liquable/nemo/targetedintent/TargetIntent;Lcom/liquable/nemo/targetedintent/TargetedAction;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/liquable/nemo/targetedintent/TargetIntent;

    .line 51
    .restart local v14    # "targetIntent":Lcom/liquable/nemo/targetedintent/TargetIntent;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/liquable/nemo/targetedintent/TargetedAction;

    .line 52
    .local v16, "targetedAction":Lcom/liquable/nemo/targetedintent/TargetedAction;
    invoke-virtual {v14}, Lcom/liquable/nemo/targetedintent/TargetIntent;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 53
    .local v15, "targetPackage":Ljava/lang/String;
    invoke-interface {v11, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 56
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_4
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 57
    .local v7, "info":Landroid/content/pm/ResolveInfo;
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v15, v0}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 58
    const/4 v4, 0x0

    .line 60
    .local v4, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 64
    new-instance v12, Lcom/liquable/nemo/targetedintent/LaunchableActivity;

    invoke-virtual {v13, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 65
    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    .line 66
    invoke-virtual {v13, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/liquable/nemo/targetedintent/LaunchableActivity;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v12, "launchableActivity":Lcom/liquable/nemo/targetedintent/LaunchableActivity;
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/liquable/nemo/targetedintent/TargetedAction;->setTarget(Lcom/liquable/nemo/targetedintent/LaunchableActivity;)V

    .line 70
    move-object/from16 v0, v16

    invoke-interface {v11, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 61
    .end local v12    # "launchableActivity":Lcom/liquable/nemo/targetedintent/LaunchableActivity;
    :catch_0
    move-exception v5

    .line 62
    .local v5, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_4

    .line 76
    .end local v4    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/liquable/nemo/targetedintent/TargetIntent;Lcom/liquable/nemo/targetedintent/TargetedAction;>;"
    .end local v7    # "info":Landroid/content/pm/ResolveInfo;
    .end local v14    # "targetIntent":Lcom/liquable/nemo/targetedintent/TargetIntent;
    .end local v15    # "targetPackage":Ljava/lang/String;
    .end local v16    # "targetedAction":Lcom/liquable/nemo/targetedintent/TargetedAction;
    :cond_5
    new-instance v19, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v19
.end method

.method public static getInviteFriendActivities(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/targetedintent/TargetedAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 82
    .local v0, "inviteFriendMatchingPackages":Ljava/util/Map;, "Ljava/util/Map<Lcom/liquable/nemo/targetedintent/TargetIntent;Lcom/liquable/nemo/targetedintent/TargetedAction;>;"
    new-instance v1, Lcom/liquable/nemo/targetedintent/TargetIntent;

    const-string/jumbo v2, "com.whatsapp"

    sget-object v3, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->PLAIN_TEXT:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    invoke-direct {v1, v2, v3}, Lcom/liquable/nemo/targetedintent/TargetIntent;-><init>(Ljava/lang/String;Lcom/liquable/nemo/targetedintent/TargetIntent$Type;)V

    new-instance v2, Lcom/liquable/nemo/targetedintent/TextInviteAction;

    sget-object v3, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->whatsapp:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    .line 84
    invoke-static {v3}, Lcom/liquable/nemo/util/CubieProfileUrl;->getUrl(Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "whatsapp"

    invoke-direct {v2, p0, v3, v4}, Lcom/liquable/nemo/targetedintent/TextInviteAction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v1, Lcom/liquable/nemo/targetedintent/TargetIntent;

    const-string/jumbo v2, "jp.naver.line.android"

    sget-object v3, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->PLAIN_TEXT:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    invoke-direct {v1, v2, v3}, Lcom/liquable/nemo/targetedintent/TargetIntent;-><init>(Ljava/lang/String;Lcom/liquable/nemo/targetedintent/TargetIntent$Type;)V

    new-instance v2, Lcom/liquable/nemo/targetedintent/TextInviteAction;

    sget-object v3, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->line:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    .line 88
    invoke-static {v3}, Lcom/liquable/nemo/util/CubieProfileUrl;->getUrl(Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "line"

    invoke-direct {v2, p0, v3, v4}, Lcom/liquable/nemo/targetedintent/TextInviteAction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v1, Lcom/liquable/nemo/targetedintent/TargetIntent;

    const-string/jumbo v2, "com.tencent.mm"

    sget-object v3, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->PLAIN_TEXT:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    invoke-direct {v1, v2, v3}, Lcom/liquable/nemo/targetedintent/TargetIntent;-><init>(Ljava/lang/String;Lcom/liquable/nemo/targetedintent/TargetIntent$Type;)V

    new-instance v2, Lcom/liquable/nemo/targetedintent/TextInviteAction;

    sget-object v3, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->wechat:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    .line 92
    invoke-static {v3}, Lcom/liquable/nemo/util/CubieProfileUrl;->getUrl(Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "wechat"

    invoke-direct {v2, p0, v3, v4}, Lcom/liquable/nemo/targetedintent/TextInviteAction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v1, Lcom/liquable/nemo/targetedintent/TargetIntent;

    const-string/jumbo v2, "kik.android"

    sget-object v3, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->PLAIN_TEXT:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    invoke-direct {v1, v2, v3}, Lcom/liquable/nemo/targetedintent/TargetIntent;-><init>(Ljava/lang/String;Lcom/liquable/nemo/targetedintent/TargetIntent$Type;)V

    new-instance v2, Lcom/liquable/nemo/targetedintent/TextInviteAction;

    sget-object v3, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->kik:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    .line 96
    invoke-static {v3}, Lcom/liquable/nemo/util/CubieProfileUrl;->getUrl(Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "kik"

    invoke-direct {v2, p0, v3, v4}, Lcom/liquable/nemo/targetedintent/TextInviteAction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v1, Lcom/liquable/nemo/targetedintent/TargetIntent;

    const-string/jumbo v2, "com.instagram.android"

    sget-object v3, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->IMAGE:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    invoke-direct {v1, v2, v3}, Lcom/liquable/nemo/targetedintent/TargetIntent;-><init>(Ljava/lang/String;Lcom/liquable/nemo/targetedintent/TargetIntent$Type;)V

    new-instance v2, Lcom/liquable/nemo/targetedintent/InstagramInviteAction;

    const-string/jumbo v3, "instagram"

    invoke-direct {v2, v3}, Lcom/liquable/nemo/targetedintent/InstagramInviteAction;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {p0, v0}, Lcom/liquable/nemo/targetedintent/TargetedIntentMatcher;->getActions(Landroid/content/Context;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getShareImageActivities(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/targetedintent/ImageShareAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 106
    .local v2, "shareImageMatchingPackages":Ljava/util/Map;, "Ljava/util/Map<Lcom/liquable/nemo/targetedintent/TargetIntent;Lcom/liquable/nemo/targetedintent/TargetedAction;>;"
    new-instance v3, Lcom/liquable/nemo/targetedintent/TargetIntent;

    const-string/jumbo v4, "com.whatsapp"

    sget-object v5, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->IMAGE:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    invoke-direct {v3, v4, v5}, Lcom/liquable/nemo/targetedintent/TargetIntent;-><init>(Ljava/lang/String;Lcom/liquable/nemo/targetedintent/TargetIntent$Type;)V

    new-instance v4, Lcom/liquable/nemo/targetedintent/ImageShareAction;

    const-string/jumbo v5, "whatsapp"

    invoke-direct {v4, v5}, Lcom/liquable/nemo/targetedintent/ImageShareAction;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v3, Lcom/liquable/nemo/targetedintent/TargetIntent;

    const-string/jumbo v4, "jp.naver.line.android"

    sget-object v5, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->IMAGE:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    invoke-direct {v3, v4, v5}, Lcom/liquable/nemo/targetedintent/TargetIntent;-><init>(Ljava/lang/String;Lcom/liquable/nemo/targetedintent/TargetIntent$Type;)V

    new-instance v4, Lcom/liquable/nemo/targetedintent/ImageShareAction;

    const-string/jumbo v5, "line"

    invoke-direct {v4, v5}, Lcom/liquable/nemo/targetedintent/ImageShareAction;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v3, Lcom/liquable/nemo/targetedintent/TargetIntent;

    const-string/jumbo v4, "com.tencent.mm"

    sget-object v5, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->IMAGE:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    invoke-direct {v3, v4, v5}, Lcom/liquable/nemo/targetedintent/TargetIntent;-><init>(Ljava/lang/String;Lcom/liquable/nemo/targetedintent/TargetIntent$Type;)V

    new-instance v4, Lcom/liquable/nemo/targetedintent/ImageShareAction;

    const-string/jumbo v5, "wechat"

    invoke-direct {v4, v5}, Lcom/liquable/nemo/targetedintent/ImageShareAction;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v3, Lcom/liquable/nemo/targetedintent/TargetIntent;

    const-string/jumbo v4, "kik.android"

    sget-object v5, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->IMAGE:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    invoke-direct {v3, v4, v5}, Lcom/liquable/nemo/targetedintent/TargetIntent;-><init>(Ljava/lang/String;Lcom/liquable/nemo/targetedintent/TargetIntent$Type;)V

    new-instance v4, Lcom/liquable/nemo/targetedintent/ImageShareAction;

    const-string/jumbo v5, "kik"

    invoke-direct {v4, v5}, Lcom/liquable/nemo/targetedintent/ImageShareAction;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v3, Lcom/liquable/nemo/targetedintent/TargetIntent;

    const-string/jumbo v4, "com.instagram.android"

    sget-object v5, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->IMAGE:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    invoke-direct {v3, v4, v5}, Lcom/liquable/nemo/targetedintent/TargetIntent;-><init>(Ljava/lang/String;Lcom/liquable/nemo/targetedintent/TargetIntent$Type;)V

    new-instance v4, Lcom/liquable/nemo/targetedintent/ImageShareAction;

    const-string/jumbo v5, "instagram"

    invoke-direct {v4, v5}, Lcom/liquable/nemo/targetedintent/ImageShareAction;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v3, Lcom/liquable/nemo/targetedintent/TargetIntent;

    const-string/jumbo v4, "com.facebook.katana"

    sget-object v5, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->IMAGE:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    invoke-direct {v3, v4, v5}, Lcom/liquable/nemo/targetedintent/TargetIntent;-><init>(Ljava/lang/String;Lcom/liquable/nemo/targetedintent/TargetIntent$Type;)V

    new-instance v4, Lcom/liquable/nemo/targetedintent/ImageShareAction;

    const-string/jumbo v5, "facebook"

    invoke-direct {v4, v5}, Lcom/liquable/nemo/targetedintent/ImageShareAction;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/targetedintent/ImageShareAction;>;"
    invoke-static {p0, v2}, Lcom/liquable/nemo/targetedintent/TargetedIntentMatcher;->getActions(Landroid/content/Context;Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/targetedintent/TargetedAction;

    .line 121
    .local v0, "action":Lcom/liquable/nemo/targetedintent/TargetedAction;
    check-cast v0, Lcom/liquable/nemo/targetedintent/ImageShareAction;

    .end local v0    # "action":Lcom/liquable/nemo/targetedintent/TargetedAction;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_0
    return-object v1
.end method

.method public static getShareVideoActivities(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/targetedintent/VideoShareAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 129
    .local v2, "shareVideoMatchingPackages":Ljava/util/Map;, "Ljava/util/Map<Lcom/liquable/nemo/targetedintent/TargetIntent;Lcom/liquable/nemo/targetedintent/TargetedAction;>;"
    new-instance v3, Lcom/liquable/nemo/targetedintent/TargetIntent;

    const-string/jumbo v4, "com.whatsapp"

    sget-object v5, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->VIDEO:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    invoke-direct {v3, v4, v5}, Lcom/liquable/nemo/targetedintent/TargetIntent;-><init>(Ljava/lang/String;Lcom/liquable/nemo/targetedintent/TargetIntent$Type;)V

    new-instance v4, Lcom/liquable/nemo/targetedintent/VideoShareAction;

    const-string/jumbo v5, "whatsapp"

    invoke-direct {v4, v5}, Lcom/liquable/nemo/targetedintent/VideoShareAction;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v3, Lcom/liquable/nemo/targetedintent/TargetIntent;

    const-string/jumbo v4, "jp.naver.line.android"

    sget-object v5, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->VIDEO:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    invoke-direct {v3, v4, v5}, Lcom/liquable/nemo/targetedintent/TargetIntent;-><init>(Ljava/lang/String;Lcom/liquable/nemo/targetedintent/TargetIntent$Type;)V

    new-instance v4, Lcom/liquable/nemo/targetedintent/VideoShareAction;

    const-string/jumbo v5, "line"

    invoke-direct {v4, v5}, Lcom/liquable/nemo/targetedintent/VideoShareAction;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v3, Lcom/liquable/nemo/targetedintent/TargetIntent;

    const-string/jumbo v4, "com.tencent.mm"

    sget-object v5, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->VIDEO:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    invoke-direct {v3, v4, v5}, Lcom/liquable/nemo/targetedintent/TargetIntent;-><init>(Ljava/lang/String;Lcom/liquable/nemo/targetedintent/TargetIntent$Type;)V

    new-instance v4, Lcom/liquable/nemo/targetedintent/VideoShareAction;

    const-string/jumbo v5, "wechat"

    invoke-direct {v4, v5}, Lcom/liquable/nemo/targetedintent/VideoShareAction;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance v3, Lcom/liquable/nemo/targetedintent/TargetIntent;

    const-string/jumbo v4, "kik.android"

    sget-object v5, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->VIDEO:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    invoke-direct {v3, v4, v5}, Lcom/liquable/nemo/targetedintent/TargetIntent;-><init>(Ljava/lang/String;Lcom/liquable/nemo/targetedintent/TargetIntent$Type;)V

    new-instance v4, Lcom/liquable/nemo/targetedintent/VideoShareAction;

    const-string/jumbo v5, "kik"

    invoke-direct {v4, v5}, Lcom/liquable/nemo/targetedintent/VideoShareAction;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v3, Lcom/liquable/nemo/targetedintent/TargetIntent;

    const-string/jumbo v4, "com.instagram.android"

    sget-object v5, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->VIDEO:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    invoke-direct {v3, v4, v5}, Lcom/liquable/nemo/targetedintent/TargetIntent;-><init>(Ljava/lang/String;Lcom/liquable/nemo/targetedintent/TargetIntent$Type;)V

    new-instance v4, Lcom/liquable/nemo/targetedintent/VideoShareAction;

    const-string/jumbo v5, "instagram"

    invoke-direct {v4, v5}, Lcom/liquable/nemo/targetedintent/VideoShareAction;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v3, Lcom/liquable/nemo/targetedintent/TargetIntent;

    const-string/jumbo v4, "com.facebook.katana"

    sget-object v5, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->VIDEO:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    invoke-direct {v3, v4, v5}, Lcom/liquable/nemo/targetedintent/TargetIntent;-><init>(Ljava/lang/String;Lcom/liquable/nemo/targetedintent/TargetIntent$Type;)V

    new-instance v4, Lcom/liquable/nemo/targetedintent/VideoShareAction;

    const-string/jumbo v5, "facebook"

    invoke-direct {v4, v5}, Lcom/liquable/nemo/targetedintent/VideoShareAction;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/targetedintent/VideoShareAction;>;"
    invoke-static {p0, v2}, Lcom/liquable/nemo/targetedintent/TargetedIntentMatcher;->getActions(Landroid/content/Context;Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/targetedintent/TargetedAction;

    .line 144
    .local v0, "action":Lcom/liquable/nemo/targetedintent/TargetedAction;
    check-cast v0, Lcom/liquable/nemo/targetedintent/VideoShareAction;

    .end local v0    # "action":Lcom/liquable/nemo/targetedintent/TargetedAction;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :cond_0
    return-object v1
.end method
