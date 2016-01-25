.class Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$UpdateGolbalSettingsAsyncTask;
.super Landroid/os/AsyncTask;
.source "AviarySystemReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateGolbalSettingsAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private contextRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 279
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 280
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$UpdateGolbalSettingsAsyncTask;->contextRef:Ljava/lang/ref/SoftReference;

    .line 281
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$UpdateGolbalSettingsAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 285
    # getter for: Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->LOG_ENABLED:Z
    invoke-static {}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->access$0()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    const-string/jumbo v4, "system-receiver"

    const-string/jumbo v5, "UpdateGlobalSettingsAsyncTask::doInBackground"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    iget-object v4, p0, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver$UpdateGolbalSettingsAsyncTask;->contextRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 290
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_2

    .line 291
    # getter for: Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->LOG_ENABLED:Z
    invoke-static {}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->access$0()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 292
    const-string/jumbo v4, "system-receiver"

    const-string/jumbo v5, "context is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_1
    :goto_0
    return-object v7

    .line 298
    :cond_2
    const/4 v4, 0x0

    :try_start_0
    aget-object v2, p1, v4

    .line 299
    .local v2, "packagename":Ljava/lang/String;
    # getter for: Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->LOG_ENABLED:Z
    invoke-static {}, Lcom/aviary/android/feather/library/receivers/AviarySystemReceiver;->access$0()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 300
    const-string/jumbo v4, "system-receiver"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "package name to check: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_3
    new-instance v1, Lcom/aviary/android/feather/library/services/SettingsFileManager;

    const-string/jumbo v4, ".global-settings"

    const/4 v5, 0x1

    invoke-direct {v1, v0, v4, v5}, Lcom/aviary/android/feather/library/services/SettingsFileManager;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 305
    .local v1, "globalManager":Lcom/aviary/android/feather/library/services/SettingsFileManager;
    invoke-virtual {v1}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->loaded()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 306
    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 307
    const-string/jumbo v4, "1"

    invoke-virtual {v1, v2, v4}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->flush(Landroid/content/Context;)V

    .line 313
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    .end local v1    # "globalManager":Lcom/aviary/android/feather/library/services/SettingsFileManager;
    .end local v2    # "packagename":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 315
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 311
    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v1    # "globalManager":Lcom/aviary/android/feather/library/services/SettingsFileManager;
    .restart local v2    # "packagename":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string/jumbo v4, "system-receiver"

    const-string/jumbo v5, "globalManager not loaded"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
