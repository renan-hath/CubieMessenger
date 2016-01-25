.class public Lcom/liquable/nemo/authenticator/AuthenticationService;
.super Landroid/app/Service;
.source "AuthenticationService.java"


# instance fields
.field private mAuthenticator:Lcom/liquable/nemo/authenticator/Authenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/liquable/nemo/authenticator/AuthenticationService;->mAuthenticator:Lcom/liquable/nemo/authenticator/Authenticator;

    invoke-virtual {v0}, Lcom/liquable/nemo/authenticator/Authenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/liquable/nemo/authenticator/Authenticator;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/authenticator/Authenticator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/liquable/nemo/authenticator/AuthenticationService;->mAuthenticator:Lcom/liquable/nemo/authenticator/Authenticator;

    .line 19
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method
