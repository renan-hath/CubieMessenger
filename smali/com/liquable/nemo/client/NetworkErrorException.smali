.class public Lcom/liquable/nemo/client/NetworkErrorException;
.super Lcom/liquable/nemo/client/AsyncException;
.source "NetworkErrorException.java"


# static fields
.field private static final serialVersionUID:J = -0x7b8db669752d637cL


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    const v0, 0x7f0d0380

    invoke-direct {p0, v0}, Lcom/liquable/nemo/client/AsyncException;-><init>(I)V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 14
    const v0, 0x7f0d0380

    invoke-direct {p0, v0, p1}, Lcom/liquable/nemo/client/AsyncException;-><init>(ILjava/lang/Throwable;)V

    .line 15
    return-void
.end method
