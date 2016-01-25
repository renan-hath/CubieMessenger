.class public Lcom/liquable/nemo/background/BackgroundIntentService;
.super Landroid/app/IntentService;
.source "BackgroundIntentService.java"


# static fields
.field private static final TASK:Ljava/lang/String; = "com.liquable.nemo.background.BackgroundIntentService.TASK"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "BackgroundIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static run(Landroid/content/Context;Lcom/liquable/nemo/background/BackgroundRunnable;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "task"    # Lcom/liquable/nemo/background/BackgroundRunnable;

    .prologue
    .line 9
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/background/BackgroundIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.background.BackgroundIntentService.TASK"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 12
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    if-eqz p1, :cond_0

    const-string/jumbo v1, "com.liquable.nemo.background.BackgroundIntentService.TASK"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    const-string/jumbo v1, "com.liquable.nemo.background.BackgroundIntentService.TASK"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/background/BackgroundRunnable;

    .line 27
    .local v0, "task":Lcom/liquable/nemo/background/BackgroundRunnable;
    invoke-interface {v0, p0}, Lcom/liquable/nemo/background/BackgroundRunnable;->runInBackground(Landroid/content/Context;)V

    goto :goto_0
.end method
