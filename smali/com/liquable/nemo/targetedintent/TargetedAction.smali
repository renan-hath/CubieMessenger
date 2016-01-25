.class public abstract Lcom/liquable/nemo/targetedintent/TargetedAction;
.super Ljava/lang/Object;
.source "TargetedAction.java"


# instance fields
.field private launchableActivity:Lcom/liquable/nemo/targetedintent/LaunchableActivity;

.field protected final trackingKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackingKey"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/liquable/nemo/targetedintent/TargetedAction;->trackingKey:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method protected abstract decorate(Landroid/content/Intent;)V
.end method

.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/liquable/nemo/targetedintent/TargetedAction;->launchableActivity:Lcom/liquable/nemo/targetedintent/LaunchableActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/targetedintent/LaunchableActivity;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/liquable/nemo/targetedintent/TargetedAction;->launchableActivity:Lcom/liquable/nemo/targetedintent/LaunchableActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/targetedintent/LaunchableActivity;->getAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setTarget(Lcom/liquable/nemo/targetedintent/LaunchableActivity;)V
    .locals 0
    .param p1, "launchableActivity"    # Lcom/liquable/nemo/targetedintent/LaunchableActivity;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/liquable/nemo/targetedintent/TargetedAction;->launchableActivity:Lcom/liquable/nemo/targetedintent/LaunchableActivity;

    .line 28
    return-void
.end method

.method public startActivity(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/liquable/nemo/targetedintent/TargetedAction;->track()V

    .line 32
    iget-object v1, p0, Lcom/liquable/nemo/targetedintent/TargetedAction;->launchableActivity:Lcom/liquable/nemo/targetedintent/LaunchableActivity;

    invoke-virtual {v1}, Lcom/liquable/nemo/targetedintent/LaunchableActivity;->getTargetedSendIntent()Landroid/content/Intent;

    move-result-object v0

    .line 33
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/targetedintent/TargetedAction;->decorate(Landroid/content/Intent;)V

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 35
    return-void
.end method

.method protected track()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method
