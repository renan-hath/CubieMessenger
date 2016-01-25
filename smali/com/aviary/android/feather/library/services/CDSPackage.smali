.class public final Lcom/aviary/android/feather/library/services/CDSPackage;
.super Ljava/lang/Object;
.source "CDSPackage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/library/services/CDSPackage$CDSEntry;
    }
.end annotation


# instance fields
.field private final displayName:Ljava/lang/String;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/library/services/CDSPackage$CDSEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final id:J

.field private final identifier:Ljava/lang/String;

.field private final minVersion:Ljava/lang/String;

.field private final packType:I

.field private final packVersion:I


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "$id"    # J
    .param p3, "$identifier"    # Ljava/lang/String;
    .param p4, "$displayName"    # Ljava/lang/String;
    .param p5, "$minVersion"    # Ljava/lang/String;
    .param p6, "$packVersion"    # I
    .param p7, "$packType"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/CDSPackage;->entries:Ljava/util/List;

    .line 49
    iput-wide p1, p0, Lcom/aviary/android/feather/library/services/CDSPackage;->id:J

    .line 50
    iput-object p3, p0, Lcom/aviary/android/feather/library/services/CDSPackage;->identifier:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/aviary/android/feather/library/services/CDSPackage;->displayName:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/aviary/android/feather/library/services/CDSPackage;->minVersion:Ljava/lang/String;

    .line 53
    iput p6, p0, Lcom/aviary/android/feather/library/services/CDSPackage;->packVersion:I

    .line 54
    iput p7, p0, Lcom/aviary/android/feather/library/services/CDSPackage;->packType:I

    .line 55
    return-void
.end method


# virtual methods
.method public final addItem(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "$id"    # J
    .param p3, "$identifier"    # Ljava/lang/String;
    .param p4, "$displayName"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v0, Lcom/aviary/android/feather/library/services/CDSPackage$CDSEntry;

    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/CDSPackage;->getId()J

    move-result-wide v1

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/aviary/android/feather/library/services/CDSPackage$CDSEntry;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    .line 91
    .local v0, "entry":Lcom/aviary/android/feather/library/services/CDSPackage$CDSEntry;
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/CDSPackage;->entries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/CDSPackage;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/aviary/android/feather/library/services/CDSPackage;->id:J

    return-wide v0
.end method

.method public final getItemAt(I)Lcom/aviary/android/feather/library/services/CDSPackage$CDSEntry;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/CDSPackage;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/CDSPackage$CDSEntry;

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/CDSPackage;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
