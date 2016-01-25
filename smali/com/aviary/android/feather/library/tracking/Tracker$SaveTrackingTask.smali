.class Lcom/aviary/android/feather/library/tracking/Tracker$SaveTrackingTask;
.super Landroid/os/AsyncTask;
.source "Tracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/tracking/Tracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SaveTrackingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/aviary/android/feather/library/tracking/Tracker$SaveTrackingTask;->context:Landroid/content/Context;

    .line 112
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/tracking/Tracker$SaveTrackingTask;->doInBackground([Ljava/util/Map;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/Map;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 118
    :try_start_0
    new-instance v0, Lcom/aviary/android/feather/library/services/SettingsFileManager;

    iget-object v1, p0, Lcom/aviary/android/feather/library/tracking/Tracker$SaveTrackingTask;->context:Landroid/content/Context;

    const-string/jumbo v2, ".temp-settings"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aviary/android/feather/library/services/SettingsFileManager;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 119
    .local v0, "manager":Lcom/aviary/android/feather/library/services/SettingsFileManager;
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->putAll(Ljava/util/Map;)V

    .line 120
    iget-object v1, p0, Lcom/aviary/android/feather/library/tracking/Tracker$SaveTrackingTask;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->flush(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "manager":Lcom/aviary/android/feather/library/services/SettingsFileManager;
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 121
    :catch_0
    move-exception v1

    goto :goto_0
.end method
