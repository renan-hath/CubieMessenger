.class public Lcom/liquable/nemo/setting/ChatGroupSettingActivity;
.super Lcom/liquable/nemo/setting/BaseSettingActivity;
.source "ChatGroupSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeControl;,
        Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;
    }
.end annotation


# static fields
.field private static fontSizeConfig:[Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;

    const/4 v1, 0x0

    new-instance v2, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;

    const v3, 0x7f0801b0

    const v4, 0x7f0801b1

    const/16 v5, 0xe

    invoke-direct {v2, v3, v4, v5}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;-><init>(III)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;

    const v3, 0x7f0801b2

    const v4, 0x7f0801b3

    const/16 v5, 0x10

    invoke-direct {v2, v3, v4, v5}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;-><init>(III)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;

    const v3, 0x7f0801b4

    const v4, 0x7f0801b5

    const/16 v5, 0x12

    invoke-direct {v2, v3, v4, v5}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;-><init>(III)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;

    const v3, 0x7f0801b6

    const v4, 0x7f0801b7

    const/16 v5, 0x14

    invoke-direct {v2, v3, v4, v5}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;-><init>(III)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;

    const v3, 0x7f0801b8

    const v4, 0x7f0801b9

    const/16 v5, 0x16

    invoke-direct {v2, v3, v4, v5}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;-><init>(III)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->fontSizeConfig:[Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/liquable/nemo/setting/BaseSettingActivity;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic access$000()[Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->fontSizeConfig:[Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;

    return-object v0
.end method


# virtual methods
.method protected onSettingCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v5

    const v6, 0x7f0d00e2

    invoke-virtual {p0, v6}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    const v5, 0x7f050001

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->addPreferencesFromResource(I)V

    .line 58
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string/jumbo v6, "font_size_preference"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 59
    .local v1, "fontSizePreference":Landroid/preference/Preference;
    new-instance v5, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$1;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$1;-><init>(Lcom/liquable/nemo/setting/ChatGroupSettingActivity;)V

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string/jumbo v6, "voice_msg_preference"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 98
    .local v4, "voiceMsgPref":Landroid/preference/Preference;
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v5}, Lcom/liquable/nemo/util/Pref;->isPlayVoiceMessageUsingEarpiece()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 99
    const v5, 0x7f0d0514

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 103
    :goto_0
    new-instance v5, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2;

    invoke-direct {v5, p0, v4}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2;-><init>(Lcom/liquable/nemo/setting/ChatGroupSettingActivity;Landroid/preference/Preference;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 130
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string/jumbo v6, "press_enter_to_send_preference"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 131
    .local v2, "pressEnterToSendPref":Landroid/preference/CheckBoxPreference;
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v5}, Lcom/liquable/nemo/util/Pref;->isPressEnterToSend()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 132
    new-instance v5, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$3;

    invoke-direct {v5, p0, v2}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$3;-><init>(Lcom/liquable/nemo/setting/ChatGroupSettingActivity;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 143
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string/jumbo v6, "recent_picture_group_setting_preference"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 144
    .local v3, "showRecentPictureGroupPref":Landroid/preference/CheckBoxPreference;
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v5}, Lcom/liquable/nemo/util/Pref;->isShowRecentPictureGroup()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 145
    new-instance v5, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$4;

    invoke-direct {v5, p0, v3}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$4;-><init>(Lcom/liquable/nemo/setting/ChatGroupSettingActivity;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 155
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string/jumbo v6, "auto_rotate_chatting_activity_preference"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 156
    .local v0, "autoRotateChattingActivityPref":Landroid/preference/CheckBoxPreference;
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v5}, Lcom/liquable/nemo/util/Pref;->isAutoRotateInChattingActivity()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 157
    new-instance v5, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$5;

    invoke-direct {v5, p0, v0}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$5;-><init>(Lcom/liquable/nemo/setting/ChatGroupSettingActivity;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 166
    return-void

    .line 101
    .end local v0    # "autoRotateChattingActivityPref":Landroid/preference/CheckBoxPreference;
    .end local v2    # "pressEnterToSendPref":Landroid/preference/CheckBoxPreference;
    .end local v3    # "showRecentPictureGroupPref":Landroid/preference/CheckBoxPreference;
    :cond_0
    const v5, 0x7f0d0515

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
