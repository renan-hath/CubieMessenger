.class public Lcom/liquable/nemo/FeatureLock;
.super Ljava/lang/Object;
.source "FeatureLock.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPublicLinkEnable()Z
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
