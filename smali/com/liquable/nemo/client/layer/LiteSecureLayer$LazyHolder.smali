.class Lcom/liquable/nemo/client/layer/LiteSecureLayer$LazyHolder;
.super Ljava/lang/Object;
.source "LiteSecureLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/client/layer/LiteSecureLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final SECURE_RANDOM:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/liquable/nemo/client/layer/LiteSecureLayer$LazyHolder;->SECURE_RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/liquable/nemo/client/layer/LiteSecureLayer$LazyHolder;->SECURE_RANDOM:Ljava/security/SecureRandom;

    return-object v0
.end method
