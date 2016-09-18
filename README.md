yamlclean
=========

[![Build Status](https://travis-ci.org/sminnee/yamlclean.svg?branch=master)](https://travis-ci.org/sminnee/yamlclean)

This simple ruby gem provides a command-line tool for cleaning up yaml files.
It's based on the ya2yaml library.

One notable use-case for this is to make Transifex translation files work with PHP's
yaml parsers. That's why I first wrote it. :-)

Installation
------------

    $> sudo gem install yamlclean

Usage
-----

    $> yamlclean input.yml > output.yml

What does it do?
----------------

The most significant change that this script makes is reformatting of multi-line strings.

It will convert this:


```yml
en_GB:
  GroupImportForm:
    Help2:                '<div class="advanced">

      <h4>Advanced usage</h4>

      <ul><li>Allowed columns: <em>%s</em></li><li>Existing groups are matched by their unique <em>Code</em> value, and updated with any new values from the imported file</li><li>Group hierarchies can be created by using a <em>ParentCode</em> column.</li><li>Permission codes can be assigned by the <em>PermissionCode</em> column. Existing permission codes are not cleared.</li>

      </ul>

      </div>'
```

To this:

```yml
en_GB:
  GroupImportForm:
    Help2: |-
        <div class="advanced">
        <h4>Advanced usage</h4>
        <ul><li>Allowed columns: <em>%s</em></li><li>Existing groups are matched by their unique <em>Code</em> value, and updated with any new values from the imported file</li><li>Group hierarchies can be created by using a <em>ParentCode</em> column.</li><li>Permission codes can be assigned by the <em>PermissionCode</em> column. Existing permission codes are not cleared.</li>
        </ul>
        </div>
```

This is important because many PHP and JavaScript yaml parsers won't parse the former syntax.

Contributing and development
----------------------------

After checking out the code, you can run the tests as follows:

    $> bundle install
    $> bundle exec rake

You can compile and install the gem locally as follows:

    $> bundle exec rake install

To publish a new release, first ensure that the correct version is listed in
`lib/yamlclean/version.rb`. Then run these commands:

    $> bundle exec rake release

Note that the last command will require permissions to publish the gem. If you've
been contributing to this through pull requests and would like to be granted core
commit and publish access, let me know!
