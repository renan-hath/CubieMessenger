.class Lcom/liquable/nemo/share/MusicRow$CheckBoxTag;
.super Ljava/lang/Object;
.source "MusicRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/share/MusicRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckBoxTag"
.end annotation


# instance fields
.field private audioInfo:Lcom/liquable/nemo/android/provider/AudioInfo;

.field private checkBoxTagType:Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;->NONE:Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;

    iput-object v0, p0, Lcom/liquable/nemo/share/MusicRow$CheckBoxTag;->checkBoxTagType:Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/share/MusicRow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/share/MusicRow$1;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/liquable/nemo/share/MusicRow$CheckBoxTag;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudioInfo()Lcom/liquable/nemo/android/provider/AudioInfo;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/liquable/nemo/share/MusicRow$CheckBoxTag;->audioInfo:Lcom/liquable/nemo/android/provider/AudioInfo;

    return-object v0
.end method

.method public getCheckBoxTagType()Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/liquable/nemo/share/MusicRow$CheckBoxTag;->checkBoxTagType:Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;

    return-object v0
.end method

.method public update(Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;Lcom/liquable/nemo/android/provider/AudioInfo;)V
    .locals 0
    .param p1, "checkBoxTagType"    # Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;
    .param p2, "audioInfo"    # Lcom/liquable/nemo/android/provider/AudioInfo;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/liquable/nemo/share/MusicRow$CheckBoxTag;->checkBoxTagType:Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;

    .line 38
    iput-object p2, p0, Lcom/liquable/nemo/share/MusicRow$CheckBoxTag;->audioInfo:Lcom/liquable/nemo/android/provider/AudioInfo;

    .line 39
    return-void
.end method
