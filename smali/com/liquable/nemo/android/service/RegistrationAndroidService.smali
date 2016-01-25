.class public Lcom/liquable/nemo/android/service/RegistrationAndroidService;
.super Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;
.source "RegistrationAndroidService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService",
        "<",
        "Lcom/liquable/nemo/android/service/RegistrationAndroidService;",
        ">;"
    }
.end annotation


# instance fields
.field protected registrationManager:Lcom/liquable/nemo/regist/model/RegistrationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/liquable/nemo/android/service/RegistrationAndroidService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    const-class v0, Lcom/liquable/nemo/android/service/RegistrationAndroidService;

    return-object v0
.end method

.method public init()Z
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->nemoRpcServiceForRegist:Lcom/liquable/nemo/client/service/NemoRpcService;

    iget-object v1, p0, Lcom/liquable/nemo/android/service/RegistrationAndroidService;->frameReceiver:Lcom/liquable/nemo/android/service/IEpFrameReceiver;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/client/service/NemoRpcService;->registToFrameReceiver(Lcom/liquable/nemo/android/service/IEpFrameReceiver;)V

    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->onDestroy()V

    .line 33
    return-void
.end method
