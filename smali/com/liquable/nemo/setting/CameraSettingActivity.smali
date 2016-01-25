.class public Lcom/liquable/nemo/setting/CameraSettingActivity;
.super Lcom/liquable/nemo/setting/BaseSettingActivity;
.source "CameraSettingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/liquable/nemo/setting/BaseSettingActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onSettingCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/CameraSettingActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v4

    const v5, 0x7f0d00c2

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/setting/CameraSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 22
    const/high16 v4, 0x7f050000

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/setting/CameraSettingActivity;->addPreferencesFromResource(I)V

    .line 24
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/CameraSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string/jumbo v5, "save_original_photo"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 25
    .local v1, "saveOriginalPhoto":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/CameraSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string/jumbo v5, "use_native_camera"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 26
    .local v2, "useNativeCamera":Landroid/preference/CheckBoxPreference;
    invoke-static {p0}, Lcom/liquable/nemo/util/FeatureSupport;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->isSaveOriginalPhoto()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 28
    new-instance v4, Lcom/liquable/nemo/setting/CameraSettingActivity$1;

    invoke-direct {v4, p0, v1}, Lcom/liquable/nemo/setting/CameraSettingActivity$1;-><init>(Lcom/liquable/nemo/setting/CameraSettingActivity;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 38
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->isUseNativeCamera()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 39
    new-instance v4, Lcom/liquable/nemo/setting/CameraSettingActivity$2;

    invoke-direct {v4, p0, v2}, Lcom/liquable/nemo/setting/CameraSettingActivity$2;-><init>(Lcom/liquable/nemo/setting/CameraSettingActivity;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 53
    :goto_0
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/CameraSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string/jumbo v5, "use_native_gallery"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 54
    .local v3, "useNativeGallery":Landroid/preference/CheckBoxPreference;
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->isUseNativeGallery()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 55
    new-instance v4, Lcom/liquable/nemo/setting/CameraSettingActivity$3;

    invoke-direct {v4, p0, v3}, Lcom/liquable/nemo/setting/CameraSettingActivity$3;-><init>(Lcom/liquable/nemo/setting/CameraSettingActivity;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/CameraSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string/jumbo v5, "hide_pictures_from_gallery"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 66
    .local v0, "hidePicturesFromGallery":Landroid/preference/CheckBoxPreference;
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->isHidePicturesFromGallery()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 67
    new-instance v4, Lcom/liquable/nemo/setting/CameraSettingActivity$4;

    invoke-direct {v4, p0, v0}, Lcom/liquable/nemo/setting/CameraSettingActivity$4;-><init>(Lcom/liquable/nemo/setting/CameraSettingActivity;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 92
    return-void

    .line 49
    .end local v0    # "hidePicturesFromGallery":Landroid/preference/CheckBoxPreference;
    .end local v3    # "useNativeGallery":Landroid/preference/CheckBoxPreference;
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/CameraSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 50
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/CameraSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
