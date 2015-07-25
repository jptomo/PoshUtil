Function Join-Paths
{
    <#
        .SYNOPSIS

        Join any Paths.

        .DESCRIPTION

        copy from http://mtgpowershell.blogspot.jp/2011/09/join-path.html

        .EXAMPLE

        Join-Paths foo bar baz
        foo\bar\baz

    #>

    Process {
        $concated, $tail = $Args
        ForEach($path In $tail) {
            $concated = Join-Path $concated $path
        }
        return $concated
    }
}
