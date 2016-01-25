.class public Lcom/liquable/nemo/setting/PrivacySettingActivity;
.super Lcom/liquable/nemo/setting/BaseSettingActivity;
.source "PrivacySettingActivity.java"


# static fields
.field private static final WAITING_KEY:I


# instance fields
.field private excludeInRecommendPreference:Landroid/preference/CheckBoxPreference;

.field private hideContactListPreference:Landroid/preference/CheckBoxPreference;

.field private hideRecommendListPreference:Landroid/preference/CheckBoxPreference;

.field private passcodeDialog:Lcom/liquable/nemo/setting/PasscodeLockDialog;

.field private spacePublicProfile:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/liquable/nemo/setting/BaseSettingActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/setting/PrivacySettingActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/PrivacySettingActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity;->spacePublicProfile:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/setting/PrivacySettingActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/PrivacySettingActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity;->hideRecommendListPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/setting/PrivacySettingActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/PrivacySettingActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity;->hideContactListPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/setting/PrivacySettingActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/PrivacySettingActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity;->excludeInRecommendPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/setting/PrivacySettingActivity;)Lcom/liquable/nemo/setting/PasscodeLockDialog;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/PrivacySettingActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity;->passcodeDialog:Lcom/liquable/nemo/setting/PasscodeLockDialog;

    return-object v0
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
    const/4 v3, 0x1

    .line 42
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/PrivacySettingActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0d03f8

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/setting/PrivacySettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    const v1, 0x7f050006

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/setting/PrivacySettingActivity;->addPreferencesFromResource(I)V

    .line 45
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/PrivacySettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "space_public_profile"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity;->spacePublicProfile:Landroid/preference/CheckBoxPreference;

    .line 47
    iget-object v1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity;->spacePublicProfile:Landroid/preference/CheckBoxPreference;

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->isSpacePublicProfile()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 48
    iget-object v1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity;->spacePublicProfile:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/liquable/nemo/setting/PrivacySettingActivity$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/setting/PrivacySettingActivity$1;-><init>(Lcom/liquable/nemo/setting/PrivacySettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 64
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/ForumDaemon;->isInSupportedCountries()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity;->spacePublicProfile:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 66
    iget-object v1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity;->spacePublicProfile:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setShouldDisableView(Z)V

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/PrivacySettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "hide_recommend_friend_list"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity;->hideRecommendListPreference:Landroid/preference/CheckBoxPreference;

    .line 70
    iget-object v1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity;->hideRecommendListPreference:Landroid/preference/CheckBoxPreference;

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->isHideRecommendList()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 71
    iget-object v1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity;->hideRecommendListPreference:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/liquable/nemo/setting/PrivacySettingActivity$2;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/setting/PrivacySettingActivity$2;-><init>(Lcom/liquable/nemo/setting/PrivacySettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 83
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/PrivacySettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "hide_contact_list"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity;->hideContactListPreference:Landroid/preference/CheckBoxPreference;

    .line 85
    iget-object v1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity;->hideContactListPreference:Landroid/preference/CheckBoxPreference;

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->isHideContactList()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 86
    iget-object v1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity;->hideContactListPreference:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/liquable/nemo/setting/PrivacySettingActivity$3;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/setting/PrivacySettingActivity$3;-><init>(Lcom/liquable/nemo/setting/PrivacySettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 99
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/PrivacySettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "exclude_in_recommend_friends"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity;->excludeInRecommendPreference:Landroid/preference/CheckBoxPreference;

    .line 101
    iget-object v1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity;->excludeInRecommendPreference:Landroid/preference/CheckBoxPreference;

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->isExcludeInRecommend()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 102
    iget-object v1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity;->excludeInRecommendPreference:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/liquable/nemo/setting/PrivacySettingActivity$4;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/setting/PrivacySettingActivity$4;-><init>(Lcom/liquable/nemo/setting/PrivacySettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 151
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/PrivacySettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "passcode_lock_preference"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 153
    .local v0, "passcodeLockPref":Landroid/preference/CheckBoxPreference;
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->hasSetPasscode()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 154
    new-instance v1, Lcom/liquable/nemo/setting/PrivacySettingActivity$5;

    invoke-direct {v1, p0, v0}, Lcom/liquable/nemo/setting/PrivacySettingActivity$5;-><init>(Lcom/liquable/nemo/setting/PrivacySettingActivity;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    new-instance v1, Lcom/liquable/nemo/setting/PasscodeLockDialog;

    invoke-direct {v1, p0, v3}, Lcom/liquable/nemo/setting/PasscodeLockDialog;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity;->passcodeDialog:Lcom/liquable/nemo/setting/PasscodeLockDialog;

    .line 168
    iget-object v1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity;->passcodeDialog:Lcom/liquable/nemo/setting/PasscodeLockDialog;

    new-instance v2, Lcom/liquable/nemo/setting/PrivacySettingActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/liquable/nemo/setting/PrivacySettingActivity$6;-><init>(Lcom/liquable/nemo/setting/PrivacySettingActivity;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/setting/PasscodeLockDialog;->setCreateListener(Lcom/liquable/nemo/setting/PasscodeLockDialog$IPasscodeCreateListener;)V

    .line 188
    return-void
.end method
