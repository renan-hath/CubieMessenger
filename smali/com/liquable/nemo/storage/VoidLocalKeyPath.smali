.class public Lcom/liquable/nemo/storage/VoidLocalKeyPath;
.super Lcom/liquable/nemo/storage/LocalKeyPath;
.source "VoidLocalKeyPath.java"


# static fields
.field public static final INSTANCE:Lcom/liquable/nemo/storage/VoidLocalKeyPath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/liquable/nemo/storage/VoidLocalKeyPath;

    invoke-direct {v0}, Lcom/liquable/nemo/storage/VoidLocalKeyPath;-><init>()V

    sput-object v0, Lcom/liquable/nemo/storage/VoidLocalKeyPath;->INSTANCE:Lcom/liquable/nemo/storage/VoidLocalKeyPath;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/storage/LocalKeyPath;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public replaceBaseName(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 0
    .param p1, "newBaseName"    # Ljava/lang/String;

    .prologue
    .line 15
    return-object p0
.end method

.method public toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;
    .locals 1
    .param p1, "nemoFileService"    # Lcom/liquable/nemo/storage/NemoFileService;

    .prologue
    .line 20
    const/4 v0, 0x0

    return-object v0
.end method
