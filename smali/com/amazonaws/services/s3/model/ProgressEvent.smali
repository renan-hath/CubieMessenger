.class public Lcom/amazonaws/services/s3/model/ProgressEvent;
.super Ljava/lang/Object;
.source "ProgressEvent.java"


# instance fields
.field private bytesTransfered:I

.field private eventCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "bytesTransfered"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/amazonaws/services/s3/model/ProgressEvent;->bytesTransfered:I

    .line 45
    return-void
.end method


# virtual methods
.method public getBytesTransfered()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/amazonaws/services/s3/model/ProgressEvent;->bytesTransfered:I

    return v0
.end method

.method public setEventCode(I)V
    .locals 0
    .param p1, "eventType"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/amazonaws/services/s3/model/ProgressEvent;->eventCode:I

    .line 91
    return-void
.end method
