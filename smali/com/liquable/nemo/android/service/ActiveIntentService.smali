.class public Lcom/liquable/nemo/android/service/ActiveIntentService;
.super Landroid/app/IntentService;
.source "ActiveIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/android/service/ActiveIntentService$Action;
    }
.end annotation


# static fields
.field private static final logger:Lcom/liquable/nemo/util/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/liquable/nemo/android/service/ActiveIntentService;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/android/service/ActiveIntentService;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "ActiveIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static startSubmitActivationIfRequired(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getLastSubmitActivationTime()J

    move-result-wide v1

    .line 26
    .local v1, "lastSubmitActivationTime":J
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    const/16 v4, 0x18

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/time/DateUtils;->addHours(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 27
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/liquable/nemo/android/service/ActiveIntentService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .local v0, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/liquable/nemo/android/service/ActiveIntentService$Action;->SUBMIT_ACTIVATION:Lcom/liquable/nemo/android/service/ActiveIntentService$Action;

    invoke-virtual {v3}, Lcom/liquable/nemo/android/service/ActiveIntentService$Action;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 31
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/android/service/ActiveIntentService$Action;->valueOf(Ljava/lang/String;)Lcom/liquable/nemo/android/service/ActiveIntentService$Action;

    move-result-object v7

    .line 47
    .local v7, "action":Lcom/liquable/nemo/android/service/ActiveIntentService$Action;
    sget-object v0, Lcom/liquable/nemo/android/service/ActiveIntentService$1;->$SwitchMap$com$liquable$nemo$android$service$ActiveIntentService$Action:[I

    invoke-virtual {v7}, Lcom/liquable/nemo/android/service/ActiveIntentService$Action;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 50
    :pswitch_0
    :try_start_0
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->activeService:Lcom/liquable/nemo/client/service/ActiveService;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/liquable/nemo/regist/RegistrationDaemon;->createPhoneModel()Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/liquable/nemo/Constants;->CURRENT_VERSION:Lcom/liquable/nemo/NemoVersion;

    .line 55
    invoke-virtual {v6}, Lcom/liquable/nemo/NemoVersion;->toString()Ljava/lang/String;

    move-result-object v6

    .line 50
    invoke-virtual/range {v0 .. v6}, Lcom/liquable/nemo/client/service/ActiveService;->submitActivation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->saveLastSubmitActivationTime()V
    :try_end_0
    .catch Lcom/liquable/nemo/client/AsyncException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v8

    .line 58
    .local v8, "e":Lcom/liquable/nemo/client/AsyncException;
    sget-object v0, Lcom/liquable/nemo/android/service/ActiveIntentService;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "activeService.submitActivatition failed"

    invoke-virtual {v0, v1, v8}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
