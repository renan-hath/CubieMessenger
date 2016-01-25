.class Lcom/liquable/nemo/setting/CameraSettingActivity$4;
.super Ljava/lang/Object;
.source "CameraSettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/CameraSettingActivity;->onSettingCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/CameraSettingActivity;

.field final synthetic val$hidePicturesFromGallery:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/CameraSettingActivity;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/setting/CameraSettingActivity;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/liquable/nemo/setting/CameraSettingActivity$4;->this$0:Lcom/liquable/nemo/setting/CameraSettingActivity;

    iput-object p2, p0, Lcom/liquable/nemo/setting/CameraSettingActivity$4;->val$hidePicturesFromGallery:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 71
    invoke-static {}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getInstance()Lcom/liquable/nemo/storage/DeviceExternalStorage;

    move-result-object v3

    sget-object v4, Lcom/liquable/nemo/android/service/MediaType;->PICTURE:Lcom/liquable/nemo/android/service/MediaType;

    .line 72
    invoke-virtual {v4}, Lcom/liquable/nemo/android/service/MediaType;->getLocalPreserveFolder()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 73
    .local v1, "folder":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, ".nomedia"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    .local v2, "nomedia":Ljava/io/File;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 76
    .local v0, "b":Z
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/util/Pref;->setHidePicturesFromGallery(Z)V

    .line 77
    iget-object v3, p0, Lcom/liquable/nemo/setting/CameraSettingActivity$4;->val$hidePicturesFromGallery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 78
    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 85
    :cond_1
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    new-instance v4, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v5, "cubie/cubie_picture/.nomedia"

    invoke-direct {v4, v5}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/storage/NemoFileService;->delete(Lcom/liquable/nemo/storage/LocalKeyPath;)V

    goto :goto_0

    .line 82
    :catch_0
    move-exception v3

    goto :goto_0
.end method
