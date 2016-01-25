.class public Lcom/liquable/nemo/opus/OpusCodecException;
.super Lcom/liquable/nemo/opus/OpusException;
.source "OpusCodecException.java"


# static fields
.field private static final serialVersionUID:J = -0x57b25021f08ba74eL


# instance fields
.field private final errorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0, p2}, Lcom/liquable/nemo/opus/OpusException;-><init>(Ljava/lang/String;)V

    .line 10
    iput p1, p0, Lcom/liquable/nemo/opus/OpusCodecException;->errorCode:I

    .line 11
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/liquable/nemo/opus/OpusCodecException;->errorCode:I

    return v0
.end method
