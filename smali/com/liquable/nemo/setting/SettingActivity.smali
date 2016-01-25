.class public Lcom/liquable/nemo/setting/SettingActivity;
.super Lcom/liquable/nemo/setting/BaseSettingActivity;
.source "SettingActivity.java"


# static fields
.field private static final SETTING_WAITING_KEY:I


# instance fields
.field private autoSyncContactPreference:Landroid/preference/CheckBoxPreference;

.field private backupPreference:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/liquable/nemo/setting/BaseSettingActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/setting/SettingActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/SettingActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/liquable/nemo/setting/SettingActivity;->autoSyncContactPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/setting/SettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/setting/SettingActivity;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/liquable/nemo/setting/SettingActivity;->refreshBackupTime()V

    return-void
.end method

.method private refreshBackupTime()V
    .locals 7

    .prologue
    const v5, 0x7f0d031c

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 138
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->backup:Lcom/liquable/nemo/db/Backup;

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/db/Backup;->getLastBackupTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 139
    .local v1, "lastBackupTime":Ljava/util/Date;
    if-nez v1, :cond_0

    .line 140
    iget-object v2, p0, Lcom/liquable/nemo/setting/SettingActivity;->backupPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/setting/SettingActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f0d00a5

    .line 141
    invoke-virtual {p0, v5}, Lcom/liquable/nemo/setting/SettingActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v6

    .line 140
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 147
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy/MM/dd HH:mm"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "format":Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Lcom/liquable/nemo/setting/SettingActivity;->backupPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/setting/SettingActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 145
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 144
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private refreshLastSyncTime()V
    .locals 9

    .prologue
    .line 150
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->scheduler:Lcom/liquable/nemo/background/Scheduler;

    new-instance v5, Lcom/liquable/nemo/background/SyncAllContactsTask;

    invoke-direct {v5}, Lcom/liquable/nemo/background/SyncAllContactsTask;-><init>()V

    invoke-virtual {v5}, Lcom/liquable/nemo/background/SyncAllContactsTask;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/background/Scheduler;->getScheduleTaskLastRunTime(Ljava/lang/String;)J

    move-result-wide v1

    .line 151
    .local v1, "lastSyncContactsTime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    .line 159
    :goto_0
    return-void

    .line 155
    :cond_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 156
    .local v3, "lastSyncTime":Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy/MM/dd HH:mm"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, "format":Ljava/text/SimpleDateFormat;
    iget-object v4, p0, Lcom/liquable/nemo/setting/SettingActivity;->autoSyncContactPreference:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f0d0329

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/setting/SettingActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 158
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 157
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 33
    packed-switch p1, :pswitch_data_0

    .line 37
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 35
    :pswitch_0
    const/4 v0, 0x0

    const v1, 0x7f0d0539

    invoke-static {p0, v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->createProgressDialog(Landroid/content/Context;ZI)Landroid/app/ProgressDialog;

    move-result-object v0

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onSettingCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/SettingActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    const v3, 0x7f0d0485

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    const v2, 0x7f050008

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/setting/SettingActivity;->addPreferencesFromResource(I)V

    .line 45
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/SettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "auto_sync_contact_preference"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/liquable/nemo/setting/SettingActivity;->autoSyncContactPreference:Landroid/preference/CheckBoxPreference;

    .line 46
    iget-object v2, p0, Lcom/liquable/nemo/setting/SettingActivity;->autoSyncContactPreference:Landroid/preference/CheckBoxPreference;

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->isAutoScheduleSyncContactsEnable()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 47
    iget-object v2, p0, Lcom/liquable/nemo/setting/SettingActivity;->autoSyncContactPreference:Landroid/preference/CheckBoxPreference;

    new-instance v3, Lcom/liquable/nemo/setting/SettingActivity$1;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/setting/SettingActivity$1;-><init>(Lcom/liquable/nemo/setting/SettingActivity;)V

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 58
    invoke-direct {p0}, Lcom/liquable/nemo/setting/SettingActivity;->refreshLastSyncTime()V

    .line 60
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/SettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "sticker_manage"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/liquable/nemo/setting/SettingActivity$2;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/setting/SettingActivity$2;-><init>(Lcom/liquable/nemo/setting/SettingActivity;)V

    .line 61
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/SettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "backup_preference"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/setting/SettingActivity;->backupPreference:Landroid/preference/Preference;

    .line 74
    iget-object v2, p0, Lcom/liquable/nemo/setting/SettingActivity;->backupPreference:Landroid/preference/Preference;

    new-instance v3, Lcom/liquable/nemo/setting/SettingActivity$3;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/setting/SettingActivity$3;-><init>(Lcom/liquable/nemo/setting/SettingActivity;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 112
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/SettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "remove_media_files"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 113
    .local v1, "removeMediaFilesPref":Landroid/preference/CheckBoxPreference;
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->isRemoveMediaFiles()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 114
    new-instance v2, Lcom/liquable/nemo/setting/SettingActivity$4;

    invoke-direct {v2, p0, v1}, Lcom/liquable/nemo/setting/SettingActivity$4;-><init>(Lcom/liquable/nemo/setting/SettingActivity;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 123
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/SettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "email"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 124
    .local v0, "emailPref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 125
    sget-object v2, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v2}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/SettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 129
    :cond_0
    return-void
.end method

.method protected onSettingResume()V
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/liquable/nemo/setting/SettingActivity;->refreshBackupTime()V

    .line 134
    iget-object v0, p0, Lcom/liquable/nemo/setting/SettingActivity;->autoSyncContactPreference:Landroid/preference/CheckBoxPreference;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->isPhoneConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 135
    return-void
.end method
