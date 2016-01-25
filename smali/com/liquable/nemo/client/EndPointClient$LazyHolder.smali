.class Lcom/liquable/nemo/client/EndPointClient$LazyHolder;
.super Ljava/lang/Object;
.source "EndPointClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/client/EndPointClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final MAPPER:Lcom/liquable/nemo/endpoint/frame/JacksonEpFrameMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/liquable/nemo/endpoint/frame/JacksonEpFrameMapper;

    invoke-direct {v0}, Lcom/liquable/nemo/endpoint/frame/JacksonEpFrameMapper;-><init>()V

    sput-object v0, Lcom/liquable/nemo/client/EndPointClient$LazyHolder;->MAPPER:Lcom/liquable/nemo/endpoint/frame/JacksonEpFrameMapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/liquable/nemo/endpoint/frame/JacksonEpFrameMapper;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/liquable/nemo/client/EndPointClient$LazyHolder;->MAPPER:Lcom/liquable/nemo/endpoint/frame/JacksonEpFrameMapper;

    return-object v0
.end method
