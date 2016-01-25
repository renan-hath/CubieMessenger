.class public Lcom/liquable/nemo/friend/model/CoverResult;
.super Ljava/lang/Object;
.source "CoverResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x37b3325167d581d2L


# instance fields
.field private final success:Z

.field private final uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "success"    # Z

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/liquable/nemo/friend/model/CoverResult;->uid:Ljava/lang/String;

    .line 13
    iput-boolean p2, p0, Lcom/liquable/nemo/friend/model/CoverResult;->success:Z

    .line 14
    return-void
.end method


# virtual methods
.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/CoverResult;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/liquable/nemo/friend/model/CoverResult;->success:Z

    return v0
.end method
