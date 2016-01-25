.class Lcom/liquable/nemo/util/ClientObjectMappers$Holder;
.super Ljava/lang/Object;
.source "ClientObjectMappers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/ClientObjectMappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final ANNOTATION_ONLY:Lorg/codehaus/jackson/map/ObjectMapper;

.field private static final SIMPLE:Lorg/codehaus/jackson/map/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 25
    new-instance v6, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v6}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    .line 27
    .local v6, "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    new-instance v0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->ANY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->ANY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    sget-object v3, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->ANY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    sget-object v4, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->ANY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    sget-object v5, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->ANY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;-><init>(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)V

    invoke-virtual {v6, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->setVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)V

    .line 33
    invoke-virtual {v6}, Lorg/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 34
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->withSerializationInclusion(Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    .line 33
    invoke-virtual {v6, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->setSerializationConfig(Lorg/codehaus/jackson/map/SerializationConfig;)Lorg/codehaus/jackson/map/ObjectMapper;

    .line 36
    invoke-virtual {v6}, Lorg/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    new-array v1, v8, [Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    sget-object v2, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_UNKNOWN_PROPERTIES:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v2, v1, v7

    .line 37
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->without([Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    .line 36
    invoke-virtual {v6, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->setDeserializationConfig(Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/ObjectMapper;

    .line 39
    sput-object v6, Lcom/liquable/nemo/util/ClientObjectMappers$Holder;->SIMPLE:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 45
    new-instance v6, Lorg/codehaus/jackson/map/ObjectMapper;

    .end local v6    # "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    invoke-direct {v6}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    .line 46
    .restart local v6    # "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    new-instance v0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->ANY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->ANY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    sget-object v3, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->ANY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    sget-object v4, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->ANY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    sget-object v5, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->ANY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;-><init>(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)V

    invoke-virtual {v6, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->setVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)V

    .line 52
    invoke-virtual {v6}, Lorg/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 53
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->withSerializationInclusion(Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    new-array v1, v8, [Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    sget-object v2, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->AUTO_DETECT_FIELDS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    aput-object v2, v1, v7

    .line 54
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->without([Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    new-array v1, v8, [Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    sget-object v2, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->AUTO_DETECT_GETTERS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    aput-object v2, v1, v7

    .line 55
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->without([Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    new-array v1, v8, [Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    sget-object v2, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->AUTO_DETECT_IS_GETTERS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    aput-object v2, v1, v7

    .line 56
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->without([Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    .line 52
    invoke-virtual {v6, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->setSerializationConfig(Lorg/codehaus/jackson/map/SerializationConfig;)Lorg/codehaus/jackson/map/ObjectMapper;

    .line 58
    invoke-virtual {v6}, Lorg/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    new-array v1, v8, [Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    sget-object v2, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_UNKNOWN_PROPERTIES:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v2, v1, v7

    .line 59
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->without([Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    new-array v1, v8, [Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    sget-object v2, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_FIELDS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v2, v1, v7

    .line 60
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->without([Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    new-array v1, v8, [Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    sget-object v2, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_SETTERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v2, v1, v7

    .line 61
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->without([Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    new-array v1, v8, [Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    sget-object v2, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_CREATORS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v2, v1, v7

    .line 62
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->without([Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    .line 58
    invoke-virtual {v6, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->setDeserializationConfig(Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/ObjectMapper;

    .line 63
    sput-object v6, Lcom/liquable/nemo/util/ClientObjectMappers$Holder;->ANNOTATION_ONLY:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 64
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/liquable/nemo/util/ClientObjectMappers$Holder;->SIMPLE:Lorg/codehaus/jackson/map/ObjectMapper;

    return-object v0
.end method

.method static synthetic access$100()Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/liquable/nemo/util/ClientObjectMappers$Holder;->ANNOTATION_ONLY:Lorg/codehaus/jackson/map/ObjectMapper;

    return-object v0
.end method
