import React from 'react';
import { slide as Menu } from 'react-burger-menu';

export default props => {
  return (
    <Menu>
      <a className="menu-item" href="/">
        Home
      </a>
      <br/>
      <a className="menu-item" href="/parks/1">
        Arcadia
      </a>
      <br/>
      <a className="menu-item" href="/parks/2">
        Arches
      </a>
      <br/>
      <a className="menu-item" href="/parks/3">
        Badlands
      </a>
      <br/>
      <a className="menu-item" href="/parks/4">
        Big Bend
      </a>
      <br/>
      <a className="menu-item" href="/parks/23">
        Grand Canyon
      </a>
      <br/>
      <a className="menu-item" href="/parks/60">
        Yosemite
      </a>
    </Menu>
  );
};

