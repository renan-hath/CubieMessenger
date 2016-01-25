.class public abstract Lcom/liquable/nemo/targetedintent/ShareAction;
.super Lcom/liquable/nemo/targetedintent/TargetedAction;
.source "ShareAction.java"


# instance fields
.field private mediaUri:Landroid/net/Uri;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackingKey"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/liquable/nemo/targetedintent/TargetedAction;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getMediaUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/liquable/nemo/targetedintent/ShareAction;->mediaUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/liquable/nemo/targetedintent/ShareAction;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setMediaUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "mediaUri"    # Landroid/net/Uri;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/liquable/nemo/targetedintent/ShareAction;->mediaUri:Landroid/net/Uri;

    .line 23
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/liquable/nemo/targetedintent/ShareAction;->text:Ljava/lang/String;

    .line 27
    return-void
.end method
