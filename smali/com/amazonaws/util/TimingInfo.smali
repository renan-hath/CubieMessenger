.class public Lcom/amazonaws/util/TimingInfo;
.super Ljava/lang/Object;
.source "TimingInfo.java"


# instance fields
.field private countersByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private endTime:J

.field private final startTime:J

.field private subMeasurementsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/util/TimingInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazonaws/util/TimingInfo;-><init>(JJ)V

    .line 29
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .param p1, "startTime"    # J

    .prologue
    .line 33
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazonaws/util/TimingInfo;-><init>(JJ)V

    .line 34
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/util/TimingInfo;->subMeasurementsByName:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/util/TimingInfo;->countersByName:Ljava/util/Map;

    .line 38
    iput-wide p1, p0, Lcom/amazonaws/util/TimingInfo;->startTime:J

    .line 39
    iput-wide p3, p0, Lcom/amazonaws/util/TimingInfo;->endTime:J

    .line 40
    return-void
.end method


# virtual methods
.method public addCounter(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->countersByName:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public addSubMeasurement(Ljava/lang/String;Lcom/amazonaws/util/TimingInfo;)V
    .locals 1
    .param p1, "subMeasurementName"    # Ljava/lang/String;
    .param p2, "timingInfo"    # Lcom/amazonaws/util/TimingInfo;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->subMeasurementsByName:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .param p1, "endTime"    # J

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/amazonaws/util/TimingInfo;->endTime:J

    .line 80
    return-void
.end method
