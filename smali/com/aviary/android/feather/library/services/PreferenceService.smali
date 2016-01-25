.class public Lcom/aviary/android/feather/library/services/PreferenceService;
.super Lcom/aviary/android/feather/library/services/BaseContextService;
.source "PreferenceService.java"


# instance fields
.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;)V
    .locals 3
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/library/services/BaseContextService;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;)V

    .line 20
    invoke-interface {p1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.aviary.android.feather"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/PreferenceService;->mPrefs:Landroid/content/SharedPreferences;

    .line 21
    return-void
.end method


# virtual methods
.method public containsValue(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/PreferenceService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/PreferenceService;->mPrefs:Landroid/content/SharedPreferences;

    .line 130
    return-void
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/PreferenceService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getStandaloneBoolean(Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 88
    :try_start_0
    const-string/jumbo v3, "com.aviary.android.feather.utils.SettingsUtils"

    const-string/jumbo v4, "getInstance"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/PreferenceService;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v8

    invoke-interface {v8}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/aviary/android/feather/library/utils/ReflectionUtils;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/aviary/android/feather/library/utils/ReflectionUtils$ReflectionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 94
    .local v1, "instance":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 97
    :try_start_1
    const-string/jumbo v3, "getBoolean"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v3, v4, v5}, Lcom/aviary/android/feather/library/utils/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;
    :try_end_1
    .catch Lcom/aviary/android/feather/library/utils/ReflectionUtils$ReflectionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    .local v2, "result":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 103
    .end local v1    # "instance":Ljava/lang/Object;
    .end local v2    # "result":Ljava/lang/Boolean;
    .end local p2    # "defaultValue":Z
    :cond_0
    :goto_0
    return p2

    .line 89
    .restart local p2    # "defaultValue":Z
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Lcom/aviary/android/feather/library/utils/ReflectionUtils$ReflectionException;
    invoke-virtual {v0}, Lcom/aviary/android/feather/library/utils/ReflectionUtils$ReflectionException;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v0    # "e":Lcom/aviary/android/feather/library/utils/ReflectionUtils$ReflectionException;
    .restart local v1    # "instance":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 99
    .restart local v0    # "e":Lcom/aviary/android/feather/library/utils/ReflectionUtils$ReflectionException;
    goto :goto_0
.end method

.method public isStandalone()Z
    .locals 2

    .prologue
    .line 82
    const-string/jumbo v0, "com.aviary.android.feather"

    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/PreferenceService;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 70
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/PreferenceService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 71
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public putInt(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 52
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/PreferenceService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 53
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method
