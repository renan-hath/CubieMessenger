.class Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;
.super Ljava/lang/Object;
.source "S3EndPointPicker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/storage/aws/S3EndPointPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TestResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;",
        ">;"
    }
.end annotation


# instance fields
.field duration:J

.field s3EndPoint:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "s3EndPoint"    # Ljava/lang/String;
    .param p2, "duration"    # J

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;->s3EndPoint:Ljava/lang/String;

    .line 80
    iput-wide p2, p0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;->duration:J

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLcom/liquable/nemo/storage/aws/S3EndPointPicker$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lcom/liquable/nemo/storage/aws/S3EndPointPicker$1;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;)I
    .locals 8
    .param p1, "another"    # Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;

    .prologue
    const-wide/16 v6, 0x0

    .line 85
    iget-wide v2, p0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;->duration:J

    iget-wide v4, p1, Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;->duration:J

    sub-long v0, v2, v4

    .line 86
    .local v0, "result":J
    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    cmp-long v2, v0, v6

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 73
    check-cast p1, Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;->compareTo(Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;)I

    move-result v0

    return v0
.end method
