"""Build the installable skill archive without private project configuration."""

from hashlib import sha256
from pathlib import Path
from zipfile import ZIP_DEFLATED, ZipFile

root = Path(__file__).resolve().parents[1]
skill = root / "skills" / "a9-depoimentos-clientes"
output = root / "dist"
output.mkdir(exist_ok=True)
archive = output / "a9-depoimentos-clientes-v1.2.0.zip"
with ZipFile(archive, "w", ZIP_DEFLATED) as bundle:
    for source in sorted(skill.rglob("*")):
        if source.is_file():
            bundle.write(source, source.relative_to(skill.parent).as_posix())
checksum = sha256(archive.read_bytes()).hexdigest()
(output / "SHA256SUMS.txt").write_text(f"{checksum}  {archive.name}\n", encoding="utf-8")
print(f"Created {archive.name}")
print(f"SHA256 {checksum}")
