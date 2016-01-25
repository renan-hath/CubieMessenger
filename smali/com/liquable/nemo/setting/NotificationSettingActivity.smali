.class public Lcom/liquable/nemo/setting/NotificationSettingActivity;
.super Lcom/liquable/nemo/setting/BaseSettingActivity;
.source "NotificationSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationTime;,
        Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;
    }
.end annotation


# static fields
.field private static final dateFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private final endTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private notificationTimeEndPref:Landroid/preference/Preference;

.field private notificationTimeStartPref:Landroid/preference/Preference;

.field private final prefs:[Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;

.field private final startTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 197
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/setting/NotificationSettingActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/liquable/nemo/setting/BaseSettingActivity;-><init>()V

    .line 49
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;

    const/4 v1, 0x0

    new-instance v2, Lcom/liquable/nemo/setting/NotificationSettingActivity$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/setting/NotificationSettingActivity$1;-><init>(Lcom/liquable/nemo/setting/NotificationSettingActivity;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/liquable/nemo/setting/NotificationSettingActivity$2;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/setting/NotificationSettingActivity$2;-><init>(Lcom/liquable/nemo/setting/NotificationSettingActivity;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/liquable/nemo/setting/NotificationSettingActivity$3;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/setting/NotificationSettingActivity$3;-><init>(Lcom/liquable/nemo/setting/NotificationSettingActivity;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/liquable/nemo/setting/NotificationSettingActivity$4;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/setting/NotificationSettingActivity$4;-><init>(Lcom/liquable/nemo/setting/NotificationSettingActivity;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/liquable/nemo/setting/NotificationSettingActivity$5;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/setting/NotificationSettingActivity$5;-><init>(Lcom/liquable/nemo/setting/NotificationSettingActivity;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/liquable/nemo/setting/NotificationSettingActivity$6;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/setting/NotificationSettingActivity$6;-><init>(Lcom/liquable/nemo/setting/NotificationSettingActivity;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/liquable/nemo/setting/NotificationSettingActivity$7;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/setting/NotificationSettingActivity$7;-><init>(Lcom/liquable/nemo/setting/NotificationSettingActivity;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/liquable/nemo/setting/NotificationSettingActivity$8;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/setting/NotificationSettingActivity$8;-><init>(Lcom/liquable/nemo/setting/NotificationSettingActivity;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/liquable/nemo/setting/NotificationSettingActivity$9;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/setting/NotificationSettingActivity$9;-><init>(Lcom/liquable/nemo/setting/NotificationSettingActivity;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity;->prefs:[Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;

    .line 199
    new-instance v0, Lcom/liquable/nemo/setting/NotificationSettingActivity$10;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/setting/NotificationSettingActivity$10;-><init>(Lcom/liquable/nemo/setting/NotificationSettingActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity;->startTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 219
    new-instance v0, Lcom/liquable/nemo/setting/NotificationSettingActivity$11;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/setting/NotificationSettingActivity$11;-><init>(Lcom/liquable/nemo/setting/NotificationSettingActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity;->endTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic access$000()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/liquable/nemo/setting/NotificationSettingActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/setting/NotificationSettingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/NotificationSettingActivity;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/liquable/nemo/setting/NotificationSettingActivity;->getCubieHeadState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/setting/NotificationSettingActivity;)Landroid/app/TimePickerDialog$OnTimeSetListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/NotificationSettingActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity;->endTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/setting/NotificationSettingActivity;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/NotificationSettingActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity;->notificationTimeStartPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/setting/NotificationSettingActivity;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/NotificationSettingActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity;->notificationTimeEndPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/setting/NotificationSettingActivity;)[Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/NotificationSettingActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity;->prefs:[Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/liquable/nemo/setting/NotificationSettingActivity;Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/setting/NotificationSettingActivity;
    .param p1, "x1"    # Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/liquable/nemo/setting/NotificationSettingActivity;->initNotificationPreference(Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;)V

    return-void
.end method

.method static synthetic access$700(Lcom/liquable/nemo/setting/NotificationSettingActivity;)Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationTime;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/NotificationSettingActivity;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/liquable/nemo/setting/NotificationSettingActivity;->getStartTime()Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationTime;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/liquable/nemo/setting/NotificationSettingActivity;)Landroid/app/TimePickerDialog$OnTimeSetListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/NotificationSettingActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity;->startTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/liquable/nemo/setting/NotificationSettingActivity;)Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationTime;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/NotificationSettingActivity;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/liquable/nemo/setting/NotificationSettingActivity;->getEndTime()Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationTime;

    move-result-object v0

    return-object v0
.end method

.method private getCubieHeadState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isCubieHeadEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    const-string/jumbo v0, "disabled"

    .line 249
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isCubieHeadAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "always_on"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "enabled"

    goto :goto_0
.end method

.method private getEndTime()Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationTime;
    .locals 6

    .prologue
    .line 253
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getNotificationEndTime()Ljava/util/Date;

    move-result-object v1

    .line 254
    .local v1, "startTime":Ljava/util/Date;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 255
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 257
    new-instance v2, Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationTime;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationTime;-><init>(IILcom/liquable/nemo/setting/NotificationSettingActivity$1;)V

    return-object v2
.end method

.method private getStartTime()Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationTime;
    .locals 6

    .prologue
    .line 261
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getNotificationStartTime()Ljava/util/Date;

    move-result-object v1

    .line 262
    .local v1, "startTime":Ljava/util/Date;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 263
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 265
    new-instance v2, Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationTime;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationTime;-><init>(IILcom/liquable/nemo/setting/NotificationSettingActivity$1;)V

    return-object v2
.end method

.method private initAllNotificationEnable()V
    .locals 4

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/NotificationSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "ENABLE_ALL_NOTIFICATION"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 271
    .local v1, "allnotificationEnablePref":Landroid/preference/CheckBoxPreference;
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->isAllNotificationEnable()Z

    move-result v0

    .line 272
    .local v0, "allNotificationEnable":Z
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 273
    new-instance v2, Lcom/liquable/nemo/setting/NotificationSettingActivity$12;

    invoke-direct {v2, p0, v1}, Lcom/liquable/nemo/setting/NotificationSettingActivity$12;-><init>(Lcom/liquable/nemo/setting/NotificationSettingActivity;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 287
    return-void
.end method

.method private initNotificationPreference(Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;)V
    .locals 3
    .param p1, "pref"    # Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/NotificationSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 291
    invoke-interface {p1}, Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 290
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 292
    .local v0, "checkboxPref":Landroid/preference/CheckBoxPreference;
    invoke-interface {p1}, Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 293
    new-instance v1, Lcom/liquable/nemo/setting/NotificationSettingActivity$13;

    invoke-direct {v1, p0, p1, v0}, Lcom/liquable/nemo/setting/NotificationSettingActivity$13;-><init>(Lcom/liquable/nemo/setting/NotificationSettingActivity;Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 302
    return-void
.end method

.method private initNotifyTimePrefs()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 305
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/NotificationSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "notification_time_start"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity;->notificationTimeStartPref:Landroid/preference/Preference;

    .line 306
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/NotificationSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "notification_time_end"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity;->notificationTimeEndPref:Landroid/preference/Preference;

    .line 308
    sget-object v2, Lcom/liquable/nemo/setting/NotificationSettingActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getNotificationStartTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "formattedStartTime":Ljava/lang/String;
    iget-object v2, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity;->notificationTimeStartPref:Landroid/preference/Preference;

    const v3, 0x7f0d03ab

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/setting/NotificationSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 312
    sget-object v2, Lcom/liquable/nemo/setting/NotificationSettingActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getNotificationEndTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "formattedEndTime":Ljava/lang/String;
    iget-object v2, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity;->notificationTimeEndPref:Landroid/preference/Preference;

    const v3, 0x7f0d03a7

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/setting/NotificationSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v2, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity;->notificationTimeStartPref:Landroid/preference/Preference;

    new-instance v3, Lcom/liquable/nemo/setting/NotificationSettingActivity$14;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/setting/NotificationSettingActivity$14;-><init>(Lcom/liquable/nemo/setting/NotificationSettingActivity;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 330
    iget-object v2, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity;->notificationTimeEndPref:Landroid/preference/Preference;

    new-instance v3, Lcom/liquable/nemo/setting/NotificationSettingActivity$15;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/setting/NotificationSettingActivity$15;-><init>(Lcom/liquable/nemo/setting/NotificationSettingActivity;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 344
    return-void
.end method

.method private submitAnalytics()V
    .locals 11

    .prologue
    .line 366
    sget-object v9, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v9}, Lcom/liquable/nemo/util/Pref;->isNotificationTimeEnable()Z

    move-result v3

    .line 367
    .local v3, "isNotificationTimeEnabled":Z
    invoke-direct {p0}, Lcom/liquable/nemo/setting/NotificationSettingActivity;->getStartTime()Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationTime;

    move-result-object v8

    .line 368
    .local v8, "startTime":Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationTime;
    invoke-direct {p0}, Lcom/liquable/nemo/setting/NotificationSettingActivity;->getEndTime()Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationTime;

    move-result-object v0

    .line 370
    .local v0, "endTime":Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationTime;
    sget-object v9, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v9}, Lcom/liquable/nemo/util/Pref;->isAllNotificationEnable()Z

    move-result v1

    .line 371
    .local v1, "isAllNotitificationEnable":Z
    sget-object v9, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v9}, Lcom/liquable/nemo/util/Pref;->getRingtoneSetting()Z

    move-result v4

    .line 372
    .local v4, "isRingtoneEnabled":Z
    sget-object v9, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v9}, Lcom/liquable/nemo/util/Pref;->getVibrationSetting()Z

    move-result v6

    .line 373
    .local v6, "isVibrationEnabled":Z
    sget-object v9, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v9}, Lcom/liquable/nemo/util/Pref;->isNotificationShowContent()Z

    move-result v5

    .line 374
    .local v5, "isShowNotificationContent":Z
    sget-object v9, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v9}, Lcom/liquable/nemo/util/Pref;->isForumReplyNotificationEnable()Z

    move-result v2

    .line 376
    .local v2, "isForumReplyNotificationEnable":Z
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 377
    .local v7, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 378
    const-string/jumbo v9, "isAllNotificationEnable"

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string/jumbo v9, "isRingtoneEnable"

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string/jumbo v9, "isVibrationEnable"

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string/jumbo v9, "isShowNotificationContent"

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string/jumbo v9, "isNotificationTimeEnable"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string/jumbo v9, "isForumReplyNotificationEnable"

    .line 384
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    .line 383
    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    if-eqz v3, :cond_0

    .line 386
    const-string/jumbo v9, "startTime"

    invoke-virtual {v8}, Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationTime;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string/jumbo v9, "endTime"

    invoke-virtual {v0}, Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationTime;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :goto_0
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v9

    invoke-interface {v9, v7}, Lcom/liquable/nemo/analytics/IAnalyticsService;->setNotificationChange(Ljava/util/Map;)V

    .line 405
    return-void

    .line 389
    :cond_0
    const-string/jumbo v9, "startTime"

    const-string/jumbo v10, ""

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string/jumbo v9, "endTime"

    const-string/jumbo v10, ""

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 393
    :cond_1
    const-string/jumbo v9, "isAllNotificationEnable"

    const-string/jumbo v10, "false"

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const-string/jumbo v9, "isRingtoneEnable"

    const-string/jumbo v10, "false"

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const-string/jumbo v9, "isVibrationEnable"

    const-string/jumbo v10, "false"

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string/jumbo v9, "isShowNotificationContent"

    const-string/jumbo v10, "false"

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string/jumbo v9, "isNotificationTimeEnable"

    const-string/jumbo v10, "false"

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string/jumbo v9, "isForumReplyNotificationEnable"

    const-string/jumbo v10, "false"

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string/jumbo v9, "startTime"

    const-string/jumbo v10, ""

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string/jumbo v9, "endTime"

    const-string/jumbo v10, ""

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected onDestroy()V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/liquable/nemo/setting/NotificationSettingActivity;->submitAnalytics()V

    .line 350
    invoke-super {p0}, Lcom/liquable/nemo/setting/BaseSettingActivity;->onDestroy()V

    .line 351
    return-void
.end method

.method protected onSettingCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/NotificationSettingActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0d03a6

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/setting/NotificationSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 356
    const v1, 0x7f050005

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/setting/NotificationSettingActivity;->addPreferencesFromResource(I)V

    .line 358
    invoke-direct {p0}, Lcom/liquable/nemo/setting/NotificationSettingActivity;->initAllNotificationEnable()V

    .line 359
    iget-object v2, p0, Lcom/liquable/nemo/setting/NotificationSettingActivity;->prefs:[Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 360
    .local v0, "pref":Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;
    invoke-direct {p0, v0}, Lcom/liquable/nemo/setting/NotificationSettingActivity;->initNotificationPreference(Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;)V

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    .end local v0    # "pref":Lcom/liquable/nemo/setting/NotificationSettingActivity$NotificationPreference;
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/setting/NotificationSettingActivity;->initNotifyTimePrefs()V

    .line 363
    return-void
.end method
