.class public final Lcom/aviary/android/feather/library/utils/PackageManagerUtils;
.super Ljava/lang/Object;
.source "PackageManagerUtils.java"


# static fields
.field private static final logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

.field private static mPackageInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const-string/jumbo v0, "package-utils"

    sget-object v1, Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;->ConsoleLoggerType:Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    invoke-static {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory;->getLogger(Ljava/lang/String;Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;)Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/utils/PackageManagerUtils;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    return-void
.end method

.method public static fetchInstalledApplications(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 118
    .local v0, "manager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static fetchInstalledPlugins(Landroid/content/Context;)Ljava/util/Map;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/aviary/android/feather/library/plugins/ApplicationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 75
    .local v16, "t1":J
    sget-object v4, Lcom/aviary/android/feather/library/utils/PackageManagerUtils;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "fetchInstalledPlugins"

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 77
    invoke-static/range {p0 .. p0}, Lcom/aviary/android/feather/library/utils/PackageManagerUtils;->fetchInstalledApplications(Landroid/content/Context;)Ljava/util/List;

    move-result-object v15

    .line 80
    .local v15, "systemApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v20, Ljava/util/LinkedHashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/LinkedHashMap;-><init>()V

    .line 82
    .local v20, "tempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/aviary/android/feather/library/plugins/ApplicationType;>;"
    invoke-static/range {p0 .. p0}, Lcom/aviary/android/feather/library/plugins/ApplicationType;->getDefault(Landroid/content/Context;)Lcom/aviary/android/feather/library/plugins/ApplicationType;

    move-result-object v12

    .line 83
    .local v12, "me":Lcom/aviary/android/feather/library/plugins/ApplicationType;
    invoke-virtual {v12}, Lcom/aviary/android/feather/library/plugins/ApplicationType;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 86
    .local v11, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ApplicationInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 104
    .local v18, "t2":J
    sget-object v4, Lcom/aviary/android/feather/library/utils/PackageManagerUtils;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "completed in "

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v21, v18, v16

    move-wide/from16 v0, v21

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 106
    return-object v20

    .line 87
    .end local v18    # "t2":J
    :cond_1
    new-instance v10, Landroid/content/pm/ApplicationInfo;

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v10, v4}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 88
    .local v10, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 89
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [I

    .line 90
    .local v8, "appIntType":[I
    const/4 v4, 0x1

    new-array v14, v4, [I

    .line 91
    .local v14, "stickerVersion":[I
    const/4 v4, 0x1

    new-array v9, v4, [I

    .line 94
    .local v9, "borderVersion":[I
    move-object/from16 v0, p0

    invoke-static {v0, v3, v8, v14, v9}, Lcom/aviary/android/feather/library/utils/PackageManagerUtils;->validPackage(Landroid/content/Context;Ljava/lang/String;[I[I[I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/aviary/android/feather/library/utils/PackageManagerUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 96
    .local v13, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v2, Lcom/aviary/android/feather/library/plugins/ApplicationType;

    const/4 v4, 0x0

    aget v4, v8, v4

    const/4 v5, 0x0

    aget v5, v14, v5

    const/4 v6, 0x0

    aget v6, v9, v6

    if-eqz v13, :cond_2

    iget v7, v13, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_1
    invoke-direct/range {v2 .. v7}, Lcom/aviary/android/feather/library/plugins/ApplicationType;-><init>(Ljava/lang/String;IIII)V

    .line 98
    .local v2, "appType":Lcom/aviary/android/feather/library/plugins/ApplicationType;
    sget-object v4, Lcom/aviary/android/feather/library/utils/PackageManagerUtils;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "adding: "

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v21, ", "

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/plugins/ApplicationType;->getPackageVersionCode()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 99
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 96
    .end local v2    # "appType":Lcom/aviary/android/feather/library/plugins/ApplicationType;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static getApplicationInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 227
    const/4 v1, 0x0

    .line 228
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 230
    .local v2, "manager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 234
    :goto_0
    return-object v1

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPackageInfo(Landroid/content/Context;Ljava/lang/String;[I[I)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "stickerVersionInt"    # [I
    .param p3, "borderVersionInt"    # [I

    .prologue
    .line 133
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 139
    .local v6, "res":Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 140
    .local v4, "is_sticker":I
    const/4 v3, 0x0

    .line 141
    .local v3, "is_filter":I
    const/4 v5, 0x0

    .line 142
    .local v5, "is_tool":I
    const/4 v2, 0x0

    .line 143
    .local v2, "is_border":I
    const/4 v8, 0x0

    .line 144
    .local v8, "sticker_version":I
    const/4 v0, 0x0

    .line 145
    .local v0, "border_version":I
    const/4 v7, 0x0

    .line 147
    .local v7, "resid":I
    const-string/jumbo v9, "is_sticker"

    const-string/jumbo v10, "integer"

    invoke-virtual {v6, v9, v10, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 148
    if-eqz v7, :cond_0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 150
    :cond_0
    const-string/jumbo v9, "is_filter"

    const-string/jumbo v10, "integer"

    invoke-virtual {v6, v9, v10, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 151
    if-eqz v7, :cond_1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 153
    :cond_1
    const-string/jumbo v9, "is_tool"

    const-string/jumbo v10, "integer"

    invoke-virtual {v6, v9, v10, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 154
    if-eqz v7, :cond_2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 156
    :cond_2
    const-string/jumbo v9, "is_border"

    const-string/jumbo v10, "integer"

    invoke-virtual {v6, v9, v10, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 157
    if-eqz v7, :cond_3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 159
    :cond_3
    const-string/jumbo v9, "sticker_version"

    const-string/jumbo v10, "integer"

    invoke-virtual {v6, v9, v10, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 160
    if-eqz v7, :cond_4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 162
    :cond_4
    const-string/jumbo v9, "border_version"

    const-string/jumbo v10, "integer"

    invoke-virtual {v6, v9, v10, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 163
    if-eqz v7, :cond_5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 165
    :cond_5
    const/4 v9, 0x0

    aput v8, p2, v9

    .line 166
    const/4 v9, 0x0

    aput v0, p3, v9

    .line 168
    const/4 v9, 0x1

    if-ne v3, v9, :cond_6

    const/4 v9, 0x1

    move v10, v9

    .line 169
    :goto_0
    const/4 v9, 0x1

    if-ne v4, v9, :cond_7

    const/4 v9, 0x2

    .line 168
    :goto_1
    or-int/2addr v10, v9

    .line 170
    const/4 v9, 0x1

    if-ne v5, v9, :cond_8

    const/16 v9, 0x8

    .line 168
    :goto_2
    or-int/2addr v10, v9

    .line 171
    const/4 v9, 0x1

    if-ne v2, v9, :cond_9

    const/4 v9, 0x4

    .line 168
    :goto_3
    or-int/2addr v9, v10

    .end local v0    # "border_version":I
    .end local v2    # "is_border":I
    .end local v3    # "is_filter":I
    .end local v4    # "is_sticker":I
    .end local v5    # "is_tool":I
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "resid":I
    .end local v8    # "sticker_version":I
    :goto_4
    return v9

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 136
    const/4 v9, 0x0

    goto :goto_4

    .line 168
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "border_version":I
    .restart local v2    # "is_border":I
    .restart local v3    # "is_filter":I
    .restart local v4    # "is_sticker":I
    .restart local v5    # "is_tool":I
    .restart local v6    # "res":Landroid/content/res/Resources;
    .restart local v7    # "resid":I
    .restart local v8    # "sticker_version":I
    :cond_6
    const/4 v9, 0x0

    move v10, v9

    goto :goto_0

    .line 169
    :cond_7
    const/4 v9, 0x0

    goto :goto_1

    .line 170
    :cond_8
    const/4 v9, 0x0

    goto :goto_2

    .line 171
    :cond_9
    const/4 v9, 0x0

    goto :goto_3
.end method

.method public static getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 59
    sget-object v2, Lcom/aviary/android/feather/library/utils/PackageManagerUtils;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "getPackageInfo"

    aput-object v4, v3, v5

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 61
    sget-object v2, Lcom/aviary/android/feather/library/utils/PackageManagerUtils;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 64
    .local v1, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    sput-object v2, Lcom/aviary/android/feather/library/utils/PackageManagerUtils;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v1    # "manager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    sget-object v2, Lcom/aviary/android/feather/library/utils/PackageManagerUtils;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v2

    .line 65
    .restart local v1    # "manager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPackageInfo(Landroid/content/Context;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # I

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/aviary/android/feather/library/utils/PackageManagerUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "flag"    # I

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 210
    .local v2, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 214
    :goto_0
    return-object v1

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isStandalone(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 244
    const-string/jumbo v0, "com.aviary.android.feather"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static validPackage(Landroid/content/Context;Ljava/lang/String;[I[I[I)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # [I
    .param p3, "sticker_version"    # [I
    .param p4, "border_version"    # [I

    .prologue
    const/4 v4, 0x0

    .line 185
    invoke-static {p1}, Lcom/aviary/android/feather/library/utils/PackageManagerUtils;->validPackageName(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v4

    .line 188
    :cond_1
    invoke-static {p0, p1, p3, p4}, Lcom/aviary/android/feather/library/utils/PackageManagerUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;[I[I)I

    move-result v5

    aput v5, p2, v4

    .line 190
    aget v5, p2, v4

    invoke-static {v5}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->isSticker(I)Z

    move-result v2

    .line 191
    .local v2, "is_sticker":Z
    aget v5, p2, v4

    invoke-static {v5}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->isFilter(I)Z

    move-result v1

    .line 192
    .local v1, "is_filter":Z
    aget v5, p2, v4

    invoke-static {v5}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->isTool(I)Z

    move-result v3

    .line 193
    .local v3, "is_tool":Z
    aget v5, p2, v4

    invoke-static {v5}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->isBorder(I)Z

    move-result v0

    .line 194
    .local v0, "is_border":Z
    if-nez v2, :cond_2

    if-nez v1, :cond_2

    if-nez v3, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static validPackageName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 198
    const-string/jumbo v0, "com.aviary.android.feather.plugins."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
