.class public final Lcom/liquable/util/DesignContract;
.super Ljava/lang/Object;
.source "DesignContract.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invariant(Z)Z
    .locals 1
    .param p0, "condition"    # Z

    .prologue
    .line 5
    invoke-static {p0}, Lcom/liquable/util/DesignContract;->postCondition(Z)Z

    move-result v0

    return v0
.end method

.method public static invariant(ZLjava/lang/String;)Z
    .locals 1
    .param p0, "condition"    # Z
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-static {p0, p1}, Lcom/liquable/util/DesignContract;->postCondition(ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static postCondition(Z)Z
    .locals 1
    .param p0, "condition"    # Z

    .prologue
    .line 13
    if-nez p0, :cond_0

    .line 14
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 16
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static postCondition(ZLjava/lang/String;)Z
    .locals 1
    .param p0, "condition"    # Z
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 20
    if-nez p0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static preCondition(Z)V
    .locals 1
    .param p0, "condition"    # Z

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 30
    :cond_0
    return-void
.end method

.method public static preCondition(ZLjava/lang/String;)V
    .locals 1
    .param p0, "condition"    # Z
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    return-void
.end method
