.class public Lcom/liquable/nemo/storage/aws/S3EndPointPicker;
.super Ljava/lang/Object;
.source "S3EndPointPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;,
        Lcom/liquable/nemo/storage/aws/S3EndPointPicker$NoCacheHttpGet;
    }
.end annotation


# static fields
.field private static final DEFAULT_S3_BUCKET:Ljava/lang/String; = "en-static.liquable.com"

.field public static final DEFAULT_S3_END_POINT:Ljava/lang/String; = "s3.amazonaws.com"

.field static final PICK_INTERVAL:I = 0xf731400

.field private static final endPointToBucketMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final noCacheHttpGet:Lcom/liquable/nemo/storage/aws/S3EndPointPicker$NoCacheHttpGet;

.field private final pref:Lcom/liquable/nemo/util/Pref;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->endPointToBucketMap:Ljava/util/Map;

    .line 130
    sget-object v0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->endPointToBucketMap:Ljava/util/Map;

    const-string/jumbo v1, "s3.amazonaws.com"

    const-string/jumbo v2, "en-static.liquable.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->endPointToBucketMap:Ljava/util/Map;

    const-string/jumbo v1, "s3-us-west-1.amazonaws.com"

    const-string/jumbo v2, "s3-us-west-1.cubie.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->endPointToBucketMap:Ljava/util/Map;

    const-string/jumbo v1, "s3-us-west-2.amazonaws.com"

    const-string/jumbo v2, "s3-us-west-2.cubie.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->endPointToBucketMap:Ljava/util/Map;

    const-string/jumbo v1, "s3-eu-west-1.amazonaws.com"

    const-string/jumbo v2, "s3-eu-west-1.cubie.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->endPointToBucketMap:Ljava/util/Map;

    const-string/jumbo v1, "s3-ap-southeast-1.amazonaws.com"

    const-string/jumbo v2, "s3-ap-southeast-1.cubie.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->endPointToBucketMap:Ljava/util/Map;

    const-string/jumbo v1, "s3-ap-southeast-2.amazonaws.com"

    const-string/jumbo v2, "s3-ap-southeast-2.cubie.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->endPointToBucketMap:Ljava/util/Map;

    const-string/jumbo v1, "s3-ap-northeast-1.amazonaws.com"

    const-string/jumbo v2, "s3-ap-northeast-1.cubie.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->endPointToBucketMap:Ljava/util/Map;

    const-string/jumbo v1, "s3-sa-east-1.amazonaws.com"

    const-string/jumbo v2, "s3-sa-east-1.cubie.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-static {}, Lcom/liquable/nemo/util/Logger;->getInstance()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/liquable/nemo/util/Pref;)V
    .locals 2
    .param p1, "pref"    # Lcom/liquable/nemo/util/Pref;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->pref:Lcom/liquable/nemo/util/Pref;

    .line 151
    new-instance v0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker$NoCacheHttpGet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/liquable/nemo/storage/aws/S3EndPointPicker$NoCacheHttpGet;-><init>(Lcom/liquable/nemo/storage/aws/S3EndPointPicker$1;)V

    iput-object v0, p0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->noCacheHttpGet:Lcom/liquable/nemo/storage/aws/S3EndPointPicker$NoCacheHttpGet;

    .line 152
    return-void
.end method

.method static synthetic access$000()Lcom/liquable/nemo/util/Logger;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->logger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method private averageDuration(Ljava/util/List;Ljava/lang/String;)J
    .locals 7
    .param p2, "s3EndPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;",
            ">;>;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "allTestResults":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;>;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 156
    const-wide/16 v4, 0x1388

    .line 169
    :goto_0
    return-wide v4

    .line 159
    :cond_0
    const-wide/16 v2, 0x0

    .line 161
    .local v2, "total":J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 162
    .local v1, "testResults":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;

    .line 163
    .local v0, "testResult":Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;
    iget-object v6, v0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;->s3EndPoint:Ljava/lang/String;

    invoke-static {v6, p2}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 164
    iget-wide v5, v0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;->duration:J

    add-long/2addr v2, v5

    .line 165
    goto :goto_1

    .line 169
    .end local v0    # "testResult":Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;
    .end local v1    # "testResults":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;>;"
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v4, v4

    div-long v4, v2, v4

    goto :goto_0
.end method

.method private convertTestResultsToMap(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "allTestResults":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 175
    .local v3, "testResults":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 176
    .local v0, "mapResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;

    .line 177
    .local v2, "testResult":Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;
    iget-object v6, v2, Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;->s3EndPoint:Ljava/lang/String;

    iget-wide v7, v2, Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;->duration:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 179
    .end local v2    # "testResult":Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    .end local v0    # "mapResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v3    # "testResults":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;>;"
    :cond_1
    return-object v1
.end method

.method private findBest(Ljava/util/List;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "allTestResults":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;>;>;"
    const/4 v9, 0x0

    .line 200
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 202
    .local v4, "scoresByS3EndPoint":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 203
    .local v6, "testResults":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;>;"
    invoke-direct {p0, v6}, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->topThreeS3EndPoints(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 204
    .local v7, "topThreeS3EndPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 205
    .local v2, "s3EndPoint":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 208
    .end local v2    # "s3EndPoint":Ljava/lang/String;
    .end local v6    # "testResults":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;>;"
    .end local v7    # "topThreeS3EndPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 209
    .restart local v6    # "testResults":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;>;"
    invoke-direct {p0, v6}, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->topThreeS3EndPoints(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 210
    .restart local v7    # "topThreeS3EndPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 211
    .restart local v2    # "s3EndPoint":Ljava/lang/String;
    const/16 v3, -0x64

    .line 212
    .local v3, "score":I
    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 213
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v7, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v12

    sub-int v3, v11, v12

    .line 215
    :cond_3
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 216
    .local v0, "currentScore":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v11, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 220
    .end local v0    # "currentScore":Ljava/lang/Integer;
    .end local v2    # "s3EndPoint":Ljava/lang/String;
    .end local v3    # "score":I
    .end local v6    # "testResults":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;>;"
    .end local v7    # "topThreeS3EndPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    new-instance v8, Lcom/liquable/nemo/storage/aws/S3EndPointPicker$1;

    invoke-direct {v8, p0}, Lcom/liquable/nemo/storage/aws/S3EndPointPicker$1;-><init>(Lcom/liquable/nemo/storage/aws/S3EndPointPicker;)V

    invoke-static {v4, v8}, Lcom/liquable/util/CollectionsLean;->sortMap(Ljava/util/Map;Ljava/util/Comparator;)Ljava/util/Map;

    move-result-object v5

    .line 228
    .local v5, "sorted":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v8

    if-nez v8, :cond_5

    move-object v8, v9

    .line 235
    :goto_2
    return-object v8

    .line 231
    :cond_5
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 232
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gez v8, :cond_6

    move-object v8, v9

    .line 233
    goto :goto_2

    .line 235
    :cond_6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_2
.end method

.method private gatherSortedAllEndPointsSpeedWith()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/storage/aws/S3EndPointPickUnstableException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x3

    .line 240
    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    .line 241
    .local v5, "testResult":Ljava/util/Set;, "Ljava/util/Set<Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;>;"
    const/4 v6, 0x0

    .line 242
    .local v6, "totalFailedCount":I
    sget-object v8, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->endPointToBucketMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 243
    .local v3, "endPointWithBucket":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 244
    .local v4, "s3EndPoint":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 245
    .local v0, "bucket":Ljava/lang/String;
    const-string/jumbo v9, "http://%s/%s/cubie-production-speed-test.txt?%s"

    new-array v10, v13, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11

    const/4 v11, 0x2

    .line 248
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 245
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 250
    .local v7, "urlString":Ljava/lang/String;
    iget-object v9, p0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->noCacheHttpGet:Lcom/liquable/nemo/storage/aws/S3EndPointPicker$NoCacheHttpGet;

    invoke-virtual {v9, v7}, Lcom/liquable/nemo/storage/aws/S3EndPointPicker$NoCacheHttpGet;->retrieveDownloadTime(Ljava/lang/String;)J

    move-result-wide v1

    .line 251
    .local v1, "duration":J
    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-gtz v9, :cond_1

    .line 252
    add-int/lit8 v6, v6, 0x1

    .line 253
    if-lt v6, v13, :cond_0

    .line 254
    new-instance v8, Lcom/liquable/nemo/storage/aws/S3EndPointPickUnstableException;

    invoke-direct {v8}, Lcom/liquable/nemo/storage/aws/S3EndPointPickUnstableException;-><init>()V

    throw v8

    .line 257
    :cond_1
    new-instance v9, Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;

    const/4 v10, 0x0

    invoke-direct {v9, v4, v1, v2, v10}, Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;-><init>(Ljava/lang/String;JLcom/liquable/nemo/storage/aws/S3EndPointPicker$1;)V

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    .end local v0    # "bucket":Ljava/lang/String;
    .end local v1    # "duration":J
    .end local v3    # "endPointWithBucket":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "s3EndPoint":Ljava/lang/String;
    .end local v7    # "urlString":Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v8
.end method

.method public static getBucket(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s3EndPoint"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    const-string/jumbo v0, "en-static.liquable.com"

    .line 99
    :cond_0
    :goto_0
    return-object v0

    .line 95
    :cond_1
    sget-object v1, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->endPointToBucketMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    .local v0, "bucket":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 97
    const-string/jumbo v1, ".amazonaws.com"

    const-string/jumbo v2, ".cubie.com"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s3EndPoint"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 106
    .local v0, "endPointToLocationtMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "s3.amazonaws.com"

    const-string/jumbo v3, "US Standard"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string/jumbo v2, "s3-us-west-1.amazonaws.com"

    const-string/jumbo v3, "North California"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string/jumbo v2, "s3-us-west-2.amazonaws.com"

    const-string/jumbo v3, "Oregon"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string/jumbo v2, "s3-eu-west-1.amazonaws.com"

    const-string/jumbo v3, "Ireland"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string/jumbo v2, "s3-ap-southeast-1.amazonaws.com"

    const-string/jumbo v3, "Singapore"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string/jumbo v2, "s3-ap-southeast-2.amazonaws.com"

    const-string/jumbo v3, "Sydney"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string/jumbo v2, "s3-ap-northeast-1.amazonaws.com"

    const-string/jumbo v3, "Tokyo"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string/jumbo v2, "s3-sa-east-1.amazonaws.com"

    const-string/jumbo v3, "Sao-Paulo"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const-string/jumbo v1, "--Unknown S3 Location--"

    .line 120
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private saveBest(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, "testResults":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;>;>;"
    invoke-direct {p0, p1}, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->findBest(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "bestS3EndPoint":Ljava/lang/String;
    invoke-static {v2}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 278
    iget-object v3, p0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3, v2}, Lcom/liquable/nemo/util/Pref;->setS3EndPoint(Ljava/lang/String;)V

    .line 279
    invoke-direct {p0, p1, v2}, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->averageDuration(Ljava/util/List;Ljava/lang/String;)J

    move-result-wide v0

    .line 280
    .local v0, "averageDuration":J
    sget-object v3, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "picked s3 endpoint:%s, avg duration:%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    .line 282
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    .line 280
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->info(Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v3

    invoke-static {v2}, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->getLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->pickS3EndPoint(Ljava/lang/String;J)V

    .line 288
    .end local v0    # "averageDuration":J
    :goto_0
    return-void

    .line 286
    :cond_0
    sget-object v3, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "no stable best S3 EndPoint found, ignore result"

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private topThreeS3EndPoints(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "testResults":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;>;"
    const/4 v3, 0x3

    .line 317
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 318
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 326
    :cond_0
    return-object v1

    .line 320
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v1, "topThreeS3EndPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-interface {p1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;

    .line 323
    .local v0, "testResult":Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;
    iget-object v3, v0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;->s3EndPoint:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public doStartPick()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/storage/aws/S3EndPointPickUnstableException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->gatherSortedAllEndPointsSpeedWith()Ljava/util/List;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v0, "allTestResults":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/liquable/nemo/storage/aws/S3EndPointPicker$TestResult;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->gatherSortedAllEndPointsSpeedWith()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    :cond_0
    invoke-direct {p0, v0}, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->saveBest(Ljava/util/List;)V

    .line 196
    invoke-direct {p0, v0}, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->convertTestResultsToMap(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method rePickDelayDurationInMillis(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 264
    const/4 v2, 0x6

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 266
    .local v0, "minutes":[I
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget v1, v0, v2

    .line 268
    .local v1, "selected":I
    array-length v2, v0

    if-ge p1, v2, :cond_0

    .line 269
    aget v1, v0, p1

    .line 272
    :cond_0
    mul-int/lit8 v2, v1, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    return v2

    .line 264
    nop

    :array_0
    .array-data 4
        0x1e
        0x3c
        0x78
        0xf0
        0x2d0
        0x5a0
    .end array-data
.end method

.method public startPick()Z
    .locals 9

    .prologue
    const/16 v8, 0xe

    const/4 v4, 0x0

    .line 297
    :try_start_0
    invoke-virtual {p0}, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->doStartPick()Ljava/util/List;

    .line 298
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 299
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v5, 0xe

    const v6, 0xf731400

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 300
    iget-object v5, p0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/liquable/nemo/util/Pref;->setNextPickS3EndPointTime(J)V

    .line 301
    iget-object v5, p0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/util/Pref;->setPickS3EndPointBackOffIndex(I)V
    :try_end_0
    .catch Lcom/liquable/nemo/storage/aws/S3EndPointPickUnstableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    const/4 v4, 0x1

    .line 312
    :goto_0
    return v4

    .line 303
    .end local v0    # "calendar":Ljava/util/Calendar;
    :catch_0
    move-exception v2

    .line 304
    .local v2, "e":Lcom/liquable/nemo/storage/aws/S3EndPointPickUnstableException;
    iget-object v5, p0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v5}, Lcom/liquable/nemo/util/Pref;->getPickS3EndPointBackOffIndex()I

    move-result v3

    .line 305
    .local v3, "index":I
    invoke-virtual {p0, v3}, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->rePickDelayDurationInMillis(I)I

    move-result v1

    .line 307
    .local v1, "delay":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 308
    .restart local v0    # "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v8, v1}, Ljava/util/Calendar;->add(II)V

    .line 310
    iget-object v5, p0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/liquable/nemo/util/Pref;->setNextPickS3EndPointTime(J)V

    .line 311
    iget-object v5, p0, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->pref:Lcom/liquable/nemo/util/Pref;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/util/Pref;->setPickS3EndPointBackOffIndex(I)V

    goto :goto_0
.end method
