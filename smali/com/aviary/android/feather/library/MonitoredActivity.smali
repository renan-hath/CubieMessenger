.class public Lcom/aviary/android/feather/library/MonitoredActivity;
.super Landroid/app/Activity;
.source "MonitoredActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/library/MonitoredActivity$LifeCycleAdapter;,
        Lcom/aviary/android/feather/library/MonitoredActivity$LifeCycleListener;
    }
.end annotation


# static fields
.field protected static mApiKey:Ljava/lang/String;


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/aviary/android/feather/library/MonitoredActivity$LifeCycleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    .line 17
    return-void
.end method

.method public static getApiKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    sget-object v1, Lcom/aviary/android/feather/library/MonitoredActivity;->mApiKey:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 158
    :try_start_0
    invoke-static {p0}, Lcom/aviary/android/feather/library/MonitoredActivity;->readApiKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/aviary/android/feather/library/MonitoredActivity;->mApiKey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_0
    :goto_0
    sget-object v1, Lcom/aviary/android/feather/library/MonitoredActivity;->mApiKey:Ljava/lang/String;

    return-object v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    const-string/jumbo v1, "MXI5mzSf6Ei6gEQ5eTAOPg"

    sput-object v1, Lcom/aviary/android/feather/library/MonitoredActivity;->mApiKey:Ljava/lang/String;

    goto :goto_0
.end method

.method private static readApiKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string/jumbo v4, "aviary-credentials.txt"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 179
    .local v2, "stream":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 181
    .local v0, "line":Ljava/lang/String;
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 183
    .local v1, "scanner":Ljava/util/Scanner;
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    .line 186
    :cond_0
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    .line 188
    return-object v0
.end method


# virtual methods
.method public addLifeCycleListener(Lcom/aviary/android/feather/library/MonitoredActivity$LifeCycleListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/aviary/android/feather/library/MonitoredActivity$LifeCycleListener;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/aviary/android/feather/library/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    iget-object v2, p0, Lcom/aviary/android/feather/library/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    invoke-static {p0}, Lit/sephiroth/android/library/ab/AB;->getInstance(Landroid/content/Context;)Lit/sephiroth/android/library/ab/AB;

    move-result-object v0

    .line 142
    .local v0, "ab_test":Lit/sephiroth/android/library/ab/AB;
    const-string/jumbo v2, "MonitoredActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "group: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lit/sephiroth/android/library/ab/AB;->getGroup()Lit/sephiroth/android/library/ab/AB$Group;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/MonitoredActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/aviary/android/feather/library/MonitoredActivity;->getApiKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "3.0.0"

    invoke-static {p0, v2, v3, v4}, Lcom/aviary/android/feather/library/tracking/Tracker;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 145
    invoke-virtual {v0}, Lit/sephiroth/android/library/ab/AB;->getGroup()Lit/sephiroth/android/library/ab/AB$Group;

    move-result-object v2

    invoke-virtual {v2}, Lit/sephiroth/android/library/ab/AB$Group;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aviary/android/feather/library/tracking/Tracker;->setABGroup(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/aviary/android/feather/library/tracking/Tracker;->open()V

    .line 147
    invoke-static {}, Lcom/aviary/android/feather/library/tracking/Tracker;->upload()V

    .line 148
    return-void

    .line 137
    .end local v0    # "ab_test":Lit/sephiroth/android/library/ab/AB;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/library/MonitoredActivity$LifeCycleListener;

    .line 138
    .local v1, "listener":Lcom/aviary/android/feather/library/MonitoredActivity$LifeCycleListener;
    invoke-interface {v1, p0}, Lcom/aviary/android/feather/library/MonitoredActivity$LifeCycleListener;->onActivityCreated(Lcom/aviary/android/feather/library/MonitoredActivity;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 194
    iget-object v1, p0, Lcom/aviary/android/feather/library/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 197
    return-void

    .line 194
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/MonitoredActivity$LifeCycleListener;

    .line 195
    .local v0, "listener":Lcom/aviary/android/feather/library/MonitoredActivity$LifeCycleListener;
    invoke-interface {v0, p0}, Lcom/aviary/android/feather/library/MonitoredActivity$LifeCycleListener;->onActivityDestroyed(Lcom/aviary/android/feather/library/MonitoredActivity;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 217
    invoke-static {}, Lcom/aviary/android/feather/library/tracking/Tracker;->close()Z

    .line 218
    invoke-static {}, Lcom/aviary/android/feather/library/tracking/Tracker;->upload()V

    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 220
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 224
    invoke-static {}, Lcom/aviary/android/feather/library/tracking/Tracker;->open()V

    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 226
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 202
    iget-object v1, p0, Lcom/aviary/android/feather/library/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    return-void

    .line 202
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/MonitoredActivity$LifeCycleListener;

    .line 203
    .local v0, "listener":Lcom/aviary/android/feather/library/MonitoredActivity$LifeCycleListener;
    invoke-interface {v0, p0}, Lcom/aviary/android/feather/library/MonitoredActivity$LifeCycleListener;->onActivityStarted(Lcom/aviary/android/feather/library/MonitoredActivity;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 210
    iget-object v1, p0, Lcom/aviary/android/feather/library/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    return-void

    .line 210
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/MonitoredActivity$LifeCycleListener;

    .line 211
    .local v0, "listener":Lcom/aviary/android/feather/library/MonitoredActivity$LifeCycleListener;
    invoke-interface {v0, p0}, Lcom/aviary/android/feather/library/MonitoredActivity$LifeCycleListener;->onActivityStopped(Lcom/aviary/android/feather/library/MonitoredActivity;)V

    goto :goto_0
.end method

.method public removeLifeCycleListener(Lcom/aviary/android/feather/library/MonitoredActivity$LifeCycleListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/aviary/android/feather/library/MonitoredActivity$LifeCycleListener;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/aviary/android/feather/library/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method
