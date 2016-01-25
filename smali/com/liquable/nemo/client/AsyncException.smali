.class public Lcom/liquable/nemo/client/AsyncException;
.super Ljava/lang/Exception;
.source "AsyncException.java"


# static fields
.field private static final serialVersionUID:J = -0x1491d40fd5688953L


# instance fields
.field private final messageResId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "messageResId"    # I

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 8
    iput p1, p0, Lcom/liquable/nemo/client/AsyncException;->messageResId:I

    .line 9
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "messageResId"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 12
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 13
    iput p1, p0, Lcom/liquable/nemo/client/AsyncException;->messageResId:I

    .line 14
    return-void
.end method


# virtual methods
.method public getErrorMessageResId()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/liquable/nemo/client/AsyncException;->messageResId:I

    return v0
.end method
