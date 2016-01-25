.class final Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerExportDb;
.super Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;
.source "HelpSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/setting/HelpSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EngineerExportDb"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V
    .locals 2

    .prologue
    .line 258
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerExportDb;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    .line 259
    const-string/jumbo v0, "Export database"

    const-string/jumbo v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/setting/HelpSettingActivity;
    .param p2, "x1"    # Lcom/liquable/nemo/setting/HelpSettingActivity$1;

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerExportDb;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 264
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "/data/data/com.liquable.nemo/databases/nemo"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .local v1, "in":Ljava/io/File;
    invoke-static {}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getInstance()Lcom/liquable/nemo/storage/DeviceExternalStorage;

    move-result-object v3

    const-string/jumbo v4, "nemo.db"

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 270
    .local v2, "out":Ljava/io/File;
    :try_start_0
    invoke-static {v1, v2}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
